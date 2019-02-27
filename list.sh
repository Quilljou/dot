# macOS only
# Generate vscode.extension.sh, make sure you have installed code command
code --list-extensions | xargs -L 1 echo code --install-extension > vscode/extension.sh

# copy vscode config
# vscsetting="~/Library/Application\ Support/Code/User"
cp -r ~/Library/Application\ Support/Code/User/{settings.json,keybindings.json,snippets} vscode
