#!/bin/bash

# set the GitHub link
github_link="https://github.com/6a6ak/SBuild/archive/refs/heads/master.zip"

# get the filename from the link
filename=${github_link##*/}

# download the file
wget $github_link

# extract the file
if [[ $filename == *.tar.gz ]]; then
  tar -xvzf $filename
elif [[ $filename == *.zip ]]; then
  unzip $filename
fi

chmod +x  index.sh
chmod +x modules/*
