#!/bin/bash

# <bitbar.title>Rsync Checker</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Michael Henning</bitbar.author>
# <bitbar.author.github>myklhenn</bitbar.author.github>
# <bitbar.desc>A Bitbar plugin that indicates if an instance of [rsync] is running.</bitbar.desc>
# <bitbar.image>https://raw.githubusercontent.com/myklhenn/rsync-checker-bitbar/master/img/rsync-is-running.png</bitbar.image>
# <bitbar.abouturl>https://github.com/myklhenn/rsync-checker-bitbar</bitbar.abouturl>

if ps axco command | grep -e '^rsync$' > /dev/null
then
  # arrow-circle-up icon
  echo "| image=iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAAlwSFlzAAAWJQAAFiUBSVIk8AAAAW5pVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDUuNC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4KICAgICAgICAgPGRjOnN1YmplY3Q+CiAgICAgICAgICAgIDxyZGY6QmFnLz4KICAgICAgICAgPC9kYzpzdWJqZWN0PgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4K72CKvQAAAl9JREFUWAnFlz1OHEEQhXewhIhwCCGYCziFgAxtQAgRwgFYckAAARHcgZQj2ByFEC0xEkgEEFngAAKs5XtD127Pfw070pb0VP1T9V7R3dP0Jr2WNhwOF0j5DlbA15D+hL8BV0mSPIax7pxEwSkYgCZTjGJV6GQGyTw4Ay+grSlHufOfqoLEdXAPJjVxrLcqgoQ98DapcpQvrj1XEQTuR4ldN+uLQE3L7v3Ln4k9AodAbY+Ju3w7mNCB8+65BNdsSWmvgifgMWkUDyaDOrEey4jnivCuxJnlpR5VfeeeT61U3Mjg0Ep4ipDW+J6go4ujyUS8amJVXjHAU8TpiIOEAagzl7gRQuQpYpDGE6zlr7NW4i2LWOih3K9RLxUn/pcJma8YW2NcHFXWVwEHFbP6rAp7ztgP8N+EzWsM7FrfPGN1RRyogBNQZoVbi6BtkF5UJmA+EGhuy8bMM/YzzOfdyYwFlfi/8RiZm/R/gy/xeK6tuT8hNp7KcMUTdVtwC9GygvEbIHNPZEg+YggZmWI3Qu432nejmWwj3YK6Q/iP+EtQ+P/QUIBklKNccVRZP2FGN9JDnrCpz9MriWOkEPed7cWZ8Ia7diZ0GXYtbTuEF10yO7lSzXQZwzbckjjnTO5NuAWv6CyNViBsw7lXvIO486A5pmIV2jxIdOZmLVttDTgt8yCxM6AlfYZwBxSuWRPK+WMEJaxCjnNzVV1x7wSt8hgIp/cotZJCEYXLh/HPmrj2jd/lSZjeDxOrkCKm99PMipCnEL2a9G4cgCZTjGLHj86YLNfO3Oe5udJuIO7s5/k7F3i9+3YHKc4AAAAASUVORK5CYII="
  echo "---"
  echo "rsync is currently running"
else
  # check-circle icon
  echo "| image=iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAAlwSFlzAAAWJQAAFiUBSVIk8AAAAW5pVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDUuNC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj4KICAgICAgICAgPGRjOnN1YmplY3Q+CiAgICAgICAgICAgIDxyZGY6QmFnLz4KICAgICAgICAgPC9kYzpzdWJqZWN0PgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4K72CKvQAAAw9JREFUWAnFl8tOFEEUhmk2RhMk8UbkrqiJOzduCS4MT6AJ7ia+Bc8gD+BlzWs4kQ3GxCCEKApRE0WNbFipkWT8/qbOcPpSPd0IepJ/qs79dHXXqZqkryF1Op0hXG6AKTAY3HcZt8BKkiTfguzoBiUF82AV9CLZyFaF/h0RZAAsgB+gKclHvgNVVSQxJY7T6BbBSM7mF/wL8BrsBN05xuvgJjgRZDZ8ZnKPV/PMBD1HkrfAHvD0HGYOnIwFQHcq2MjWk2K1Yn4ZuQy9J/Pv4E7GqAYjn+DL0KXqIjCbBv7J1+Av1chXaiJfoBhGiq1XWyQU+uA+mSWjHE8XLZtJFCPEYkhJOYofJkJ9sUZa9kM/eb5ExQKKabSQsUGqfe63WuN3nglYwhD/rmUPuQ76BAI1DqPlEv9GIgJNgA3wGPSbM3O/O+ZN3ofCd7i5ruIQE2JNgvfA6KGFQaBtbLSayuG0/EY/mUT3uQWKjfjqXX+wYGFcM3t49QnlMBrS088ax7hkxk1HfC+Djy6WpnoNwz4W/JIUgWb1fnSqGam9NiaCKUYbjDvnDeYztOBtJ9PU55hSAXakSmm9XXOtTj94AjbBZCrM/SC/gqgNxpzqDXMl/+JkNvU5BrtfqGlz4yP4+yB9QpJNeD38Vfg2GHVyPaGSf3Wy6FQF6DJhpFPNk043IyV/StJ0mRmvwbeBPy3X4W+RvOpS4nPsVn6EJLkI9CF52oK5Dba9kLla9wUKqCRsMh+hCqjchuiHwVtQReoj5yszo8SmuA3lhKKyEaEfAe9AGb1C6Jc1Wgd2xUYUCujZinEeBdoNnlZgzkYz5hTYRltxrcOIAGNA34DoJTiTyxFlsdUFxUgH38FhJC8EtY5j7MbBA9AkuVr0DjDKHsehgP97IQlFHPeV7DdLUH4lUwEiDFq2TmH8d5fS/RK6RezlClmG1zaKHtfoGl/LE0uaHwmmpVoEvtXK7Pj/mCiLiCJ0o9Xu0LZpSvKRb/EGvB++/i9B1CfUrHzHhC0l2cg2u88j6aKvIGKvVVHgI/t7/geHp1wAwd+dHwAAAABJRU5ErkJggg=="
  echo "---"
  echo "rsync is not running"
fi