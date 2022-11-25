#!/bin/bash
set -e

cat ascii_art.txt

if [ -z "$1" ]; then
  >&2 echo "Please specify a file name such as monster_black.gif"
  exit 1
fi


VARIANT_DIR="$1"-variants
FULL_PATH_ORIGINAL=/imgs/"$1"

mkdir -p "$VARIANT_DIR"

echo "==> identify number of frames in $FULL_PATH_ORIGINAL"

FRAME_COUNT=$(docker run --entrypoint=identify -v $(pwd):/imgs --rm dpokidov/imagemagick "$FULL_PATH_ORIGINAL" | wc -l)

echo "==>Frame count is $FRAME_COUNT"

for i in `seq 1 "$FRAME_COUNT"`;do
  START_INDEX=$i
  echo "   ==> Now processing frame $START_INDEX"
  docker run -v $(pwd):/imgs --rm dpokidov/imagemagick "$FULL_PATH_ORIGINAL" -duplicate 1,0-"$START_INDEX" -delete 0-"$START_INDEX" /imgs/"$VARIANT_DIR"/offset_"$START_INDEX"-"$1"
done

echo "All done, til next time!"
