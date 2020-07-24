# node seris

echo 'Start restore node commands'
# first install home brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# then install node
brew install node
# then install cnpm
npm install -g cnpm --registry=https://registry.npm.taobao.org
# last install commands
cnpm install -g whistle hexo vsce yo n cloc nodemon cost-of-modules
brew install yarn

echo 'node commands restored'

echo 'Start install subl command'
ln -sv "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
echo 'subl command installed'
