# rsync-checker-bitbar

A [Bitbar] plugin that indicates if an instance of [rsync] is running.

![rsync-not-running-and-running]

NOTE: *`README` will be updated soon to address the new options available in the dropdown!*

## Huh?

I use [rsync] on my home server to back up my MacBook, but previously I was unable to see when a backup was running.

Now I use this [Bitbar] plugin to display an icon in macOS's menu bar that changes if a running instance of rsync is detected, and then returns to normal when a running instance of rsync is no longer detected.

### "Stuck?"

Sometimes I find that an instance of rsync has been running on my system for a long time, but reports 0% CPU usage and appears to have lost the connection to my server.

This plugin used to just show the "rsync is currently running" state in this situation, but now it shows the message below and an option to quickly shut down the "stuck" rsync process. The time to wait to show this message (30 minutes by default) can be customized via the `WARN_TIME` variable in the plugin's source code.

![rsync-stuck]

## Installation

1. Make sure [Bitbar] is installed, and make note of the plugins folder selected during installation
2. Copy `rsync-checker.5s.sh` from this repository to the plugin folder mentioned in Step 1.

## Credits

The icons ([arrow-circle-up], [check-circle], [exclamation-triangle]) used in this script are [licensed] by [Font Awesome].

[Bitbar]: https://getbitbar.com
[rsync]: https://rsync.samba.org
[rsync-not-running-and-running]: img/rsync-not-running-and-running.png
[rsync-is-running]: img/rsync-is-running.png
[rsync-stuck]: img/rsync-stuck.png
[arrow-circle-up]: https://fontawesome.com/icons/arrow-circle-up?style=solid
[check-circle]: https://fontawesome.com/icons/check-circle?style=solid
[exclamation-triangle]: https://fontawesome.com/icons/exclamation-triangle?style=solid
[licensed]: https://fontawesome.com/license/free
[Font Awesome]: https://fontawesome.com