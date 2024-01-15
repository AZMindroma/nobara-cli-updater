#!/bin/bash
folder_path="$HOME/Programs"
file_path="$HOME/Programs/nobara-update"
line='export PATH=$PATH:$HOME/Programs'

if [ -d "$folder_path" ]; then
	echo "The Programs folder already exists."
else
	echo "Creating Programs folder..."
	mkdir $folder_path
 	if [ -d "$folder_path" ]; then
		echo "Created."
  	else
   		echo "Failed."
     	fi
fi

if [ -e "$file_path" ]; then
	echo "The nobara-update file already exists."
else
	echo "Adding nobara-update file..."
	echo "sudo dnf update rpmfusion-nonfree-release rpmfusion-free-release fedora-repos nobara-repos --refresh && sudo dnf distro-sync --refresh && sudo dnf update --refresh && flatpak update" >> $file_path
	chmod +x $file_path
 	if [ -e "$file_path" ]; then
		echo "Added."
  	else
   		echo "Failed."
     	fi
fi

echo "Adding folder to PATH..."
if grep -q "$line" "$HOME/.bashrc"; then
	echo "Folder is already in PATH."
else
	echo $line >> $HOME/.bashrc
 	if grep -q "$line" "$HOME/.bashrc"; then
		echo "Added."
  	else
   		echo "Failed."
     	fi
fi
echo "Successfully installed. Restart your shell, subsequently run nobara-update to update your system."

