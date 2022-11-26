[![CircleCI](https://dl.circleci.com/status-badge/img/gh/dcycle/gif-start-frame-offsetter/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/dcycle/gif-start-frame-offsetter/tree/master)

```
  ________.__  _____          _____  _____              __    __
 /  _____/|__|/ ____\   _____/ ____\/ ____\______ _____/  |__/  |_  ___________
/   \  ___|  \   __\   /  _ \   __\\   __\/  ___// __ \   __\   __\/ __ \_  __ \
\    \_\  \  ||  |    (  <_> )  |   |  |  \___ \\  ___/|  |  |  | \  ___/|  | \/
 \______  /__||__|     \____/|__|   |__| /____  >\___  >__|  |__|  \___  >__|
        \/                                    \/     \/                \/
```

Ever dreamed of taking a single GIF and creating multiple variants, each starting at a different frame?

Now you can!

Introducing "GIF staring frame offsetter".

Here's how it works.

First make sure you have Docker installed, then put gif (for example monster.gif) in the same directory as this script, and run:

    ./offset-gif-start.sh monster.gif

This will create a "monster.gif-variants" directory with one gif starting at each frame.

ASCII art by https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Gif%20offsetter
