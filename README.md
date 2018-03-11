# Joker's .vimrc

## Usage

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
You need to configure this following plugins individually.
- [*YCM*][1]
    - YouCompleteMe: a code-completion engine for Vim
- [*powerline*][2]
    - Powerline is a statusline plugin for vim, and provides statuslines and prompts for several other applications, including zsh, bash, fish, tmux, IPython, Awesome, i3 and Qtile.
- [*cscope*][3]
    - Cscove(new name for this plugin, since cscope.vim is used too widely.) is a smart cscope helper for vim.
- [*ctrlsf*][4]
	- `sudo apt install ack-grep`
	- `sudo apt install silversearcher-ag`
- *ctags*
    - `sudo apt install ctags`

## Shortcuts

	F1.Terminal help
	F2.NERDTree
	F3.Tagbar
	F4.Gundo
	F5.Markdown-preview

## Working in a c/c++ project

- Create .ycm_extra_conf.py
*Depends on Makefile*

    ```
    Launch `vim` in project root directories and run `:YcmGenerateconfig` 
    to create a `.ycm_extra_conf.py`
    so YCM can complete your project's function and class.
    ```

- Create cscope database[*(show more details)*][5]
*In project root directories*

    ```
    $ find `pwd` -name "*.c" -o -name "*.cpp" -o -name "*.hpp" -o -name "*.h" > cscope.files

    $ cscope -Rbq
    ```

- Create ctags file

    ```
    modify ~/.indexer_files like this:
    --------------- ~/.indexer_files ---------------
    [foo]
    /data/workplace/foo/src/
    [bar]
    /data/workplace/bar/src/
    ```


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

[1]:https://github.com/Valloric/YouCompleteMe
[2]:https://github.com/powerline/powerline
[3]:https://github.com/brookhong/cscope.vim
[4]:https://github.com/dyng/ctrlsf.vim
[5]:https://github.com/JokerShao/vimrc/blob/master/cscope.md
