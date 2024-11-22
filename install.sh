#!/bin/bash

if ! command -v brew 2>&1 >/dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed... skipping"
fi

# Testing if each piece of software exists
brew list macfuse 2>&1 >/dev/null
if ! [ $? ]
then
    echo "macFUSE not installed... installing..."
    brew install --cask macfuse
else
    echo "macFUSE already installed... skipping"
fi

brew list gromgit/fuse/ntfs-3g-mac 2>&1 >/dev/null
if ! [ $? ]
then
    echo "NTFS-3G for Mac not installed... installing..."
    brew install gromgit/fuse/ntfs-3g-mac
else
    echo "NTFS-3G for Mac already installed... skipping"
fi


brew list mounty 2>&1 >/dev/null
if ! [ $? ]
then
    echo "Mounty not installed... installing..."
    brew install --cask mounty
else
    echo "Mounty already installed... skipping"
fi

echo "Done!"
exit 0

