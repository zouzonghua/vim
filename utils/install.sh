
vim_folder=~/.vim
vim_rc=~/.vimrc
backup_rand=$RANDOM

# detect if there's a .vim folder
if [ -d $vim_folder  ]
then
  echo "\033[0;31mYou already have a .vim folder in your home directory.\033[0;m"
    read -p "Would you like to backup your .vim folder first? [y/n] " ans
    if [ "$ans" == "y"  ]
      then
        echo "backup your original $vim_folder to $vim_folder-$(date +%Y%m%d)-$backup_rand"
        mv $vim_folder $vim_folder-$(date +%Y%m%d)-$backup_rand
      else
        echo "You have a $vim_folder now, please backup this first."
        exit
  fi
fi

# check .vimrc
if [ -L $vim_rc  ] || [ -f $vim_rc  ]
then
  echo "\033[0;31mThere's a .vimrc in your home directory.\033[0;m"
  read -p "Would you like to backup your .vimrc first? [y/n] " ans
    if [ "$ans" == "y"  ]
      then
      echo "backup your original $vim_rc to $vim_rc-$(date +%Y%m%d)-$backup_rand"
      mv $vim_rc $vim_rc$(date +%Y%m%d)-$backup_rand
    fi
fi


# check if Git is installed
hash git >/dev/null && /usr/bin/env git clone https://github.com/zouzonghua/.vim.git ~/.vim || {
    echo "Sorry, Git is not installed yet!"
  exit
}

# make symbolic links
echo "link vimrc and gvimrc to your home directory.."
ln -s $vim_folder/vimrc $vim_rc

# run PlugInstall to install all plugins
vim +'PlugInstall --sync' +qa

echo ""
echo "\033[0;34mNice! Seems everything is going well.\033[0m"
echo "\033[0;34mGithub Repository: https://github.com/zouzonghua/.vim/\033[0m"
echo "\033[0;34mfeel free to fork it :)\033[0m"
echo ""
echo "\033[0;34mPeace :)\033[0m"
echo ""

exit

