#!/bin/bash

# Looking for 'brew' command to see if Homebrew is installed
if ! command -v brew 2>&1 >/dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed... skipping"
fi

# Testing if each piece of software exists
# Looking for macFUSE
# brew list macfuse 2>&1 >/dev/null
# if ! [ $? ]
# then
#     echo "macFUSE not installed... installing..."
#     brew install --cask macfuse
# else
#     echo "macFUSE already installed... skipping"
# fi

# Looking for NTFS-3G for Mac
brew list ntfs-3g 2>&1 >/dev/null
if ! [ $? ]
then
    echo "NTFS-3G not installed... installing..."
    brew install ntfs-3g
else
    echo "NTFS-3G already installed... skipping"
fi

# Looking for Mounty for NTFS
brew list mounty 2>&1 >/dev/null
if ! [ $? ]
then
    echo "Mounty for NTFS not installed... installing..."
    brew install --cask mounty
else
    echo "Mounty for NTFS already installed... skipping"
fi

echo "Done!"
exit 0

