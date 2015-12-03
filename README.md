
完全基于 gmarik/Vundle.vim 进行插件管理,插件安装过程参考 Vundle.vim 官方说明.

安装步骤：
    1. git cone https://github.com/esnce/vim-setting.git ~/.vim/vim-setting
    2. ln -s ~/.vim/vim-setting/ycm_extra_conf.py ~/.ycm_extra_conf.py
    3. ln -s ~/.vim/vim-setting/vimrc ~/.vimrc
    4. git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    5. vim +PluginInstall +qall
    6. cd ~/.vim/bundle/YouCompleteMe
    7. sudo apt-get install build-essential cmake python-dev  ## ubuntu系统
    8. git submodule update --init --recursive  ## 部分要VPN加持
    9. ./install.py --clang-completer
    a. vim +PluginInstall +qall

---------
Good luck

