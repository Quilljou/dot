#!/usr/bin/env bash
# excute in git bash


if [ "$(uname)" = "Darwin" ]
then
    echo "mac"
elif [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]
then
    echo "linux"
elif [ "$(expr substr $(uname -s) 1 10)" = "MINGW64_NT" ]
then
    cp -r $(pwd)/vscode/{settings.json,keybindings.json,snippets} ~/Application\ Data/Code/User
fi