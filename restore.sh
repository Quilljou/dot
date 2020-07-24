#!/usr/bin/env bash

# vscode
if [ "$(uname)" = "Darwin" ]
then
    cp -r $(pwd)/vscode/{settings.json,keybindings.json,snippets} ~/Library/Application\ Support/Code/User
    echo "vscode data restored on OSX"
elif [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]
then
    echo "linux"
elif [ "$(expr substr $(uname -s) 1 10)" = "MINGW64_NT" ]
then
    cp -r $(pwd)/vscode/{settings.json,keybindings.json,snippets} ~/Application\ Data/Code/User
    echo "vscode data restored on Windows"
fi

chmod a+x ./node.sh
./node.sh