# Joker's .vimrc

### Usage:

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


> #### Attention:

- You need to configure the following plugins individually.

    [ctrlp][1]
    [YCM][2]
    [flake8][3]
    [powerline][4]
    [jedi][5]
    [cscope][6]



## Shortcuts

    F1.Terminal help                     F5.Flake8
    F2.NERDTree                 F6.YCM-Diagnostics
    F3.Gundo              F7.VOom
    F4.TagList                 F8.Markdown-preview

## how to use vim to work in a c/c++ project

    需要使用YCM-Generator生成一个.ycm_extra_conf.py文件使YCM可以补全工程所需头文件
    初始化一个cscope数据库，用于跳转
    初始化ctags标签用于查看类及函数，并可以用于跳转

## .ycm_extra_conf.py

    修改
    # These are the compilation flags that will be used in case there's no
    # compilation database set (by default, one is not set).
    # CHANGE THIS LIST OF FLAGS. YES, THIS IS THE DROID YOU HAVE BEEN LOOKING FOR.
        flags = [
        '-Wall',
        '-Wextra',
    #'-Werror',
        '-fexceptions',
        '-DNDEBUG',

    - 这里修改注视掉了 -'Werror'使得错误和警告进行区分

[1]:www.baidu.com
