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
- [*flake8*][2]
    - a Vim plugin that runs the currently open file through Flake8, a static syntax and style checker for Python source code. It supersedes both vim-pyflakes and vim-pep8.
- [*powerline*][3]
    - Powerline is a statusline plugin for vim, and provides statuslines and prompts for several other applications, including zsh, bash, fish, tmux, IPython, Awesome, i3 and Qtile.
- [*jedi-vim*][4]
    - jedi-vim - awesome Python autocompletion with VIM
- [*cscope*][5]
    - Cscove(new name for this plugin, since cscope.vim is used too widely.) is a smart cscope helper for vim.
- [*ctrlsf*][6]
	- `sudo apt install ack-grep`
	- `sudo apt install silversearcher-ag`
- *ctags*
    - `sudo apt install ctags`

## Shortcuts

	F1.Terminal help             F5.Flake8
	F2.NERDTree                  F6.Markdown-preview
	F3.Tagbar                    F7.TagsUpdate
	F4.Gundo

## Working in a c/c++ project

- Create .ycm_extra_conf.py
*Depends on Makefile*

    ```
    Launch `vim` in project root directories and run `:YcmGenerateconfig` 
    to create a `.ycm_extra_conf.py`
    so YCM can complete your project's function and class.
    ```

- Create cscope database[*(show more details)*][7]
*In project root directories*

    ```
    $ find `pwd` -name "*.c" -o -name "*.cpp" -o -name "*.hpp" -o -name "*.h" > cscope.files

    $ cscope -Rbq
    ```

- Create ctags file
> Need rebuild tags file when change source file.

    - For c project
        `ctags -R --c-kinds=+lpx --fields=+iaS --extra=+q`
    - For c++ project
        `ctags -R --c++-kinds=+lpx --fields=+iaS --extra=+q`
    - For java project
        `ctags --java-kinds=+l -R .`

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
[2]:https://github.com/nvie/vim-flake8
[3]:https://github.com/powerline/powerline
[4]:https://github.com/davidhalter/jedi-vim
[5]:https://github.com/brookhong/cscope.vim
[6]:https://github.com/dyng/ctrlsf.vim
[7]:https://github.com/JokerShao/vimrc/blob/master/cscope.md
