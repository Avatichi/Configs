#! /bin/bash

FILES=".bashrc .tmux.conf"

echo "Delete bash and tmux default config file [Y/N]"
read input
if [ "$input" = "Y" ]||[ "$input" = "y" ]; then
    echo "Removing Home bashrc and tmux"
    for file in $FILES
    do
        echo "rm ~/$file"
        rm ~/$file
    done
else
  echo "Atempt without removing default config files"
fi

for file in $FILES
do
    echo "ln -s $(pwd)/$file ~/$file"
    ln -s $(pwd)/$file ~/$file
done
