#Joker's vimrc

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
