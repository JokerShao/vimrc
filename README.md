# Joker's .vimrc

#### joker's personal .vimrc

## Shortcuts

    F1.Help                     F5.Flake8
    F2.NERDTree                 F6.YCM-Diagnostics
    F3.Gundo              F7.VOom
    F4.TagList                 F8.Markdown-preview

## Usage:

    需要单独配置的插件
    ctrlp
    YCM
    flake8
    powerline
    jedi
    cscope

## how to use vim to work in a c/c++ project

需要使用YCM-Generator生成一个.ycm_extra_conf.py文件使YCM可以补全工程所需头文件
初始化一个cscope数据库，用于跳转
初始化ctags标签用于查看类及函数，并可以用于跳转


在/home/username目录下建立了一个.vimrc文件的硬链接<br>
修改~/.vimrc会直接修改~/.vim/.vimrc<br>

项目包含:<br>
.ycm_extra_conf.py
Update_hosts.py
.gitignore
README.md
.vimrc

##使用

使用git clone命令将文件克隆到本地<br>
将.vimrc移动到~/目录下即可<br>

##关于.ycm_extra_conf.py

在.vimrc中设置的全局默认配置在.vim文件夹中<br>
如果想使用额外的补全功能，需要在项目中建立一个针对项目的.ycm_extra_conf.py
该配置文件仅对本项目有效。
全局配置默认补全C++，没有额外的库。

##关于Update_hosts.py

root权限运行即可自动更新hosts.
