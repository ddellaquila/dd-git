#!/usr/bin/env sh

echo "# Backing up current git config"
today=`date +%Y%m%d`
for file in $HOME/.gitconfig $HOME/.gitignore-global $HOME/.git_templates; do
    [ -e $file ] && mv -v $file $file.$today
done

echo "# Installing dd-git in $HOME directory"
cp -avi .gitconfig .gitignore-global .git_templates $HOME/
