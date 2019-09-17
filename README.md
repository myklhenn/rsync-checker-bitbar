# rsync-checker-bitbar

A [Bitbar] plugin that indicates if an instance of [rsync] is running.

![rsync-is-not-running]
![rsync-is-running]

## Huh?

I use [rsync] on my home server to back up my MacBook, but previously I was unable to see when a backup was running.

Now I use this [Bitbar] plugin to display an icon in macOS's menu bar that changes if a running instance of rsync is detected, and then returns to normal when a running instance of rsync is no longer detected.

## Installation

1. Make sure [Bitbar] is installed, and make note of the plugins folder selected during installation
2. Copy `rsync-checker.5s.sh` from this repository to the plugin folder mentioned in Step 1.

## Credits

The icons ([arrow-circle-up], [check-circle]) used in this script are [licensed] by [Font Awesome].

[Bitbar]: https://getbitbar.com
[rsync]: https://rsync.samba.org
[rsync-is-not-running]: img/rsync-is-not-running.png
[rsync-is-running]: img/rsync-is-running.png
[arrow-circle-up]: https://fontawesome.com/icons/arrow-circle-up?style=solid
[check-circle]: https://fontawesome.com/icons/check-circle?style=solid
[licensed]: https://fontawesome.com/license
[Font Awesome]: https://fontawesome.com