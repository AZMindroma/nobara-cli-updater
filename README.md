# "Installer" for a Nobara CLI Updater
Just some lazy sh script I wrote so I could update my Nobara system easier. Maybe it exists already, idk, but this is just for fun basically. I figured maybe some stranger over the internet would happen to want the same, so eh, here's a way to do it. Also protection from filling your bashrc with the same stuff, so that's cool I'd say.

Also it seems like you'll need to run the actual updater before using this as the updater has some contents that I haven't been smart enough to include here yet. I've settled over to Fedora so this is basically useless now.

I don't know if it runs on any other shell, I just use Bash. And don't run it as sudo, the nobara-update has it in there already. I couldn't get it to work using sudo, in fact.
## Quick Start
```
git clone https://github.com/AZMindroma/nobara-cli-updater.git
cd nobara-cli-updater
chmod +x cliupdaterinstaller.sh
./cliupdaterinstaller.sh
```
