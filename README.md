# My own dotfile install.

## Installation

### Step 0 - Before going nuclear on your hard drive

Go through the checklist below to make sure you didn't forget anything before you wipe your hard drive.

- Did you commit and push any changes/branches to your git repositories?, especially this one ?
- Have you backed up any local `.env` files you'd like to keep from your repositories?
- Did you not forget any important documents in non synched (Cloud Drive, Dropbox, etc.) folders?
- Did you not forget to export important data from your local database?
- Did you update mackup to the latest version and ran mackup backup?
- Did you save a list of appllication from system report, in case something is missing ?

### Step 1 - Hello world

- Have a new Mac or a clean install;
- Make the base setup for accounts;
- Turn on disk encryption;
- Make all the updates: `sudo softwareupdate -i -a && xcode-select --install`;

### Step 2 - Restore my shiet

- Copy public and private SSH keys to `~/.ssh` and make sure they're set to `600`;
- Clone the repo to `~/.dotfiles`: `git clone git@github.com:jpmurray/dotfiles.git ~/.dotfiles`;
- `git submodule init && git submodule update`
- Append `/usr/local/bin/zsh` to the end of your `/etc/shells` file;
- Run `install.sh` to start the installation;
- Restore preferences by running `mackup restore`;
- Check if Homebrew is ok: `brew doctor`;
- Configure keybase & 1Password;
- Install other App I can't install automatically because of reasons: Antidote;Office; Tunnel Brick; Hyper (cask is broken I think).
- Restart computer: `shutdown -r now`;

### Step 3 - Something's missing?

- Check the trackpad preferences to see if it's to our taste;
- Check Spotlight preferences;
- Check Notifications preferences;
- Check Finder preferene;
- Remove Airplay mirroring icon from taskbar in Display preferences;
- Prevent computer from sleeping automatically when display is off in Energy Saver;
- Disable Power Nap if it's on;

### Step 4 - One more time, we're gonna celebrate

- Party 🎉

## Updates

To pull the latest changes from the repo and update your setup.

```
# 1. Move into the dotfiles directory
dotfiles

# 2. Pull the changes from master
git pull

# 3. Reload the configs
reload

# 4. Restore preferences
mackup restore
```
