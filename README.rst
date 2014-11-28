vim-configs
==============
安装步骤
---------------

#. mkdir vim config dir
#. git clone vim configs
#. execute install script

.. code-block:: c

    cd ~/
    rm -rf ~/.vim
    git clone https://github.com/lennyhbt/vim-configs.git ~/.vim
    bash ~/.vim/install.sh

使用说明
--------------

* vim 的配置在 configs.vim 文件中， 按键绑定及自动命令在 config 目录下的
  bindings.vim 和 autocmds.vim 中进行配置。

* colors 目录为 vim 的配色方案，可在 configs.vim 中修改 vim 的配色方案。

* 插件相关的配置在 pluginconfig.vim 中，部分配置内容较多的插件在 pluginconfig 中
  配置，并在 pluginconfig.vim 中引入。

