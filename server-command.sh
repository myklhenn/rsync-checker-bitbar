#!/bin/bash

# This script, intended for use in conjunction with the "rsync-checker" BitBar
# script, utilizes the config variables (found either in the shell's
# environment or as sourced from the config file ~/.rsync-checker-config)
# described below to facilitate checking backup log files and starting backup
# scripts for the configured client and server.
#
# `./server-command.sh --view-log` establishes an SSH connection and shows the
# most recent contents of the configured log file.
#
# `./server-command.sh --start-backup` establishes an SSH connection and
# executes the configured backup script.
#
# Expected config variables:
#
# BACKUP_SERVER_HOSTNAME -- hostname of backup server (as used in ssh config)
# BACKUP_SCRIPT_PATH -- path on server of backup script
# BACKUP_LOG_FILE_PATH -- path on server of backup log file
# BACKUP_SSH_KEY_PATH -- local path of private SSH key used to connect to server
# BACKUP_SSH_KEY_COMMENT -- comment of private key to check for in SSH keychain

[ -e $HOME/.rsync-checker-config ] && source $HOME/.rsync-checker-config

if ! ssh-add -l | grep "$BACKUP_SSH_KEY_COMMENT" > /dev/null; then
  echo "Adding your server's SSH key to your agent first..."
  ssh-add $BACKUP_SSH_KEY_PATH
fi
case $1 in
  "--view-log")
    ssh $BACKUP_SERVER_HOSTNAME "tail -fn 24 $BACKUP_LOG_FILE_PATH"
    ;;
  "--start-backup")
    ssh $BACKUP_SERVER_HOSTNAME "$BACKUP_SCRIPT_PATH --progress"
    ;;
  *)
    SCRIPT_NAME=$(basename $0)
    echo "No command specified!"
    echo "Usage:"
    echo "$SCRIPT_NAME --view-log"
    echo "  --OR--"
    echo "$SCRIPT_NAME --start-backup"
    ;;
esac
