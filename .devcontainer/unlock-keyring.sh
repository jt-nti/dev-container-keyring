#!/usr/bin/env bash

# Run this script using dbus-run-session

# Make the dbus session available
cat << DBUS_ENV_EOF > $HOME/.dbusenv
export DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS
DBUS_ENV_EOF

# Clean up any old keyrings
rm -Rf ~/.local/share/keyrings
mkdir -p ~/.local/share/keyrings
chmod 700 ~/.local/share/keyrings

# Unlock the keyring with a random password
printf "$(openssl rand -base64 32)" | gnome-keyring-daemon --replace --foreground --unlock --components=secrets
