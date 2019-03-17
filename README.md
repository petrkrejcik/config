## Restore Time Machine
- Hold `Command + R` when booting
- Restore from TM snapshot
_Note: If a snapshot is restored via Migration Assistant the installed apps will be kept._
_Note: Spanshot is made on separate partition bacause making just a separate volume in main container is not allowed as a backup._
_Note: Snapshots requires volumes with FS: Mac OS Extended (Journaled)._

## Run
1. Run install

```sh
curl -s https://raw.githubusercontent.com/petrkrejcik/config/master/install.sh | bash
```

2. Login to Google Backup and Sync (to start downloading)
3. Setup Viscosity
- Load `~/gdrive/backup/dev/Socialbakers-Development.visc`
- Add password from KeyPass
4. iTerm2
- Load settings: Preferences -> General -> At bootom _Load preferences from..._
- `/Users/petr.krejcik/www/config/iterm2`
5. Lightshot: https://itunes.apple.com/us/app/lightshot-screenshot/id526298438
5. Laverna:
- Settings -> Sync -> Dropbox API key
- Settings -> Transfer Data -> Transfer settings -> Import `~/config/laverna/laverna-settings.json`


## xCode
Will be installed automatically with Homebrew

## SBKS
### git.ccl
https://git.ccl/profile/personal_access_tokens

### EraAgent
In snapshot

### ESET
In snapshot
