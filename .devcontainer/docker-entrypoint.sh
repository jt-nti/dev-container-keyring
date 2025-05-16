#!/usr/bin/env bash

sudo -H -u vscode dbus-run-session -- /home/vscode/.local/bin/unlock-keyring.sh

exec "$@"
