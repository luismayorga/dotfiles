#! /usr/bin/env bash

# no README
# no bash submodule
# no .gitconfig (personal info)
# not me!!1

for file in $(find . -type f -not -name 'README.md' -not -name '.bash' -not -name '.git*' -not -name 'update.sh' -maxdepth 1)
do
    cp -rf ~/$file . 
done
