#!/bin/bash

cp /home/devon/.vimrc /home/devon/vim-config-backup
echo "Copied vimrc file"

rsync -r /home/devon/.vim/autoload /home/devon/vim-config-backup
echo "Copied autoload directory"

rsync -r /home/devon/.vim/plugin /home/devon/vim-config-backup
echo "Copied plugin directory"
