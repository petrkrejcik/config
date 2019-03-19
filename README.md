## TODO
- SBKS repos
- remove icons from bottom bar
- tap without click
- install sublime packages
- config repo with access perms
- Show home in finder

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
1. Login to Google Backup and Sync (to start downloading)
1. iTerm2
- Load settings: Preferences -> General -> At bootom _Load preferences from..._
- `/Users/petr.krejcik/www/config/iterm2`
1. Lightshot: https://itunes.apple.com/us/app/lightshot-screenshot/id526298438
1. Laverna:
- Open from Finder
- Settings -> Sync -> Dropbox API key
- Settings -> Transfer Data -> Transfer settings -> Import `~/config/laverna/laverna-settings.json`
1. Setup Viscosity
- Load `~/gdrive/backup/dev/Socialbakers-Development.visc`
- Copy p12 file from Keypass to `/usr` and load it in `PKCS12` dropdown in Coonections -> Authentication
- Add password from KeyPass Certifikaty -> SB (krejcikp)
1. Edit `~/.credentials`
```sh
export MARATONEC_TOKEN="xxx"`
```
1. Run
```sh
$HOME/www/config/setup.sh
```



## Command Line Tools for xCode
Will be installed automatically with Homebrew

## SBKS
### git.ccl
https://git.ccl/profile/personal_access_tokens

### EraAgent
In snapshot

### ESET
In snapshot
