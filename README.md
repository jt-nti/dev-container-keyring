# dev-container-keyring

Example vscode dev container with a working Gnome Keyring Daemon available to extensions and terminals.

If all goes well, the following commands should work in a vscode terminal:

```
printf '12345678' | secret-tool store --label="Secret for example.org" domain example.org

secret-tool lookup domain example.org
```

## Background reading!

- https://github.com/jt-nti/hello-cics/issues/10
- https://www.baeldung.com/linux/systemd-session-dbus-headless-setup
- https://rtfm.co.ua/en/what-is-linux-keyring-gnome-keyring-secret-service-and-d-bus/
- https://github.com/zowe/zowe-explorer-vscode/wiki/Usage-in-Remote-Environments
- https://github.com/kdrkrst/zowe-remote-dev-container-config-doc
- https://docs.zowe.org/stable/user-guide/ze-usage#using-zowe-explorer-in-remote-environments
- https://medium.com/zowe/custom-credential-managers-in-zowe-explorer-b37faeee4c29
- https://medium.com/zowe/running-zowe-cli-on-jenkins-with-docker-7fd35d4211d0
- https://code.visualstudio.com/updates/v1_83#_keytar-removed-from-vs-code
- https://code.visualstudio.com/docs/editor/settings-sync#_troubleshooting-keychain-issues
- https://github.com/zowe/zowe-explorer-vscode/issues/2348
- https://github.com/IBM/db2forzosdeveloperextension-about/issues/63
- https://ibm.github.io/db2forzosdeveloperextension-about/docs/tips-and-tricks/support-for-remote-development#support-for-vs-code-remote-development
- https://github.com/atom/node-keytar/issues/224
- https://stackoverflow.com/questions/77962998/how-do-i-read-store-a-password-in-a-possibly-locked-gnome-keyring-manager-from-t
