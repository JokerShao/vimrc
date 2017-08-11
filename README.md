# Joker's .vimrc

## Usage:

1. Get configuration:

    ```
    $ git clone https://github.com/JokerShao/vimrc.git

    $ cp vimrc/.vimrc ~/.vimrc
    ```

2. Install Vundle && Let Vundle manage Plugin

    - Make your own vim directories like this:

    ```
    ~/: .vimrc .vim/
    .vim/: bundle/
    ```

    - Install Vundle

    ```
    $ cd ~/.vim/bundle/

    $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```

3. Launch `vim` and run `:PluginInstall`

> ### Attention:
You need to configure the following plugins individually.
- [*ctrlp*][1]
    - Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
- [*YCM*][2]
    - YouCompleteMe: a code-completion engine for Vim
- [*flake8*][3]
    - a Vim plugin that runs the currently open file through Flake8, a static syntax and style checker for Python source code. It supersedes both vim-pyflakes and vim-pep8.
- [*powerline*][4]
    - Powerline is a statusline plugin for vim, and provides statuslines and prompts for several other applications, including zsh, bash, fish, tmux, IPython, Awesome, i3 and Qtile.
- [*jedi-vim*][5]
    - jedi-vim - awesome Python autocompletion with VIM
- [*cscope*][6]
    - Cscove(new name for this plugin, since cscope.vim is used too widely.) is a smart cscope helper for vim.

## Shortcuts

    F1.Terminal help          F5.Flake8
    F2.NERDTree               F6.YCM-Diagnostics
    F3.Gundo                  F7.VOom
    F4.Tagbar                 F8.Markdown-preview

## how to use vim to work in a c/c++ project

    需要使用YCM-Generator生成一个.ycm_extra_conf.py文件使YCM可以补全工程所需头文件
    初始化一个cscope数据库，用于跳转
    初始化ctags标签用于查看类及函数，并可以用于跳转

## .ycm_extra_conf.py

    Change the original file.

    # These are the compilation flags that will be used in case there's no
    # compilation database set (by default, one is not set).
    # CHANGE THIS LIST OF FLAGS. YES, THIS IS THE DROID YOU HAVE BEEN LOOKING FOR.
    flags = [
    '-Wall',
    '-Wextra',
    #'-Werror',     # comment this to make the distinction between error and warning
    '-fexceptions',
    '-DNDEBUG',

[1]:https://github.com/kien/ctrlp.vim
[2]:https://github.com/Valloric/YouCompleteMe
[3]:https://github.com/nvie/vim-flake8
[4]:https://github.com/powerline/powerline
[5]:https://github.com/davidhalter/jedi-vim
[6]:https://github.com/brookhong/cscope.vim
