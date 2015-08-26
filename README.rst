vim-configs
==============
安装步骤
---------------

.. code-block:: bash

    curl https://raw.githubusercontent.com/lennyhbt/vim-configs/master/install.sh | bash -

或者

.. code-block:: bash

    wget https://raw.githubusercontent.com/lennyhbt/vim-configs/master/install.sh -O - | bash -

编译 YCM 插件

.. code-block:: bash

    # build ycm plugin
    pushd ~/.vim/bundle/YouCompleteMe/
    bash ./install.sh --clang-completer
    popd
    if [ ! -e ~/.ycm_extra_conf.py ]
    then
        cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.ycm_extra_conf.py
    fi


使用说明
--------------

* vim 的配置在 configs.vim 文件中， 按键绑定及自动命令在 config 目录下的
  bindings.vim 和 autocmds.vim 中进行配置。

* colors 目录为 vim 的配色方案，可在 configs.vim 中修改 vim 的配色方案。

* 插件相关的配置在 pluginconfig.vim 中，部分配置内容较多的插件在 pluginconfig 中
  配置，并在 pluginconfig.vim 中引入。

更多插件
-----------
可访问 `vim awesom <http://vimawesome.com/>`_ 获取更多插件。


DEPENDS
===========
ack/ag
cscope
ctags

build-essential
cmake
python-dev
mono-xbuild

SHORTCUTS
==========
回车保存文件

;   ==> ;
gy  ==> 复制整个文件内容
Y   ==> 复制到行尾
H   ==> 跳到行首
L   ==> 跳到行尾
<leader>v   ==> 编辑vimrc
<leader>,   ==> 切换到之前编辑的buffer
<leader>hs  ==> split
<leader>vs  ==> vsplit
<leader>sc  ==> close current window
<leader>ff  ==> 格式化整个文件
<C-L>   ==> 清除高亮

<leader>ca  ==> build cscope database
<leader>ct, <leader>cs, <leader>pcs to (re-)build only ctags, cscope, or pycscope database

