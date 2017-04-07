vim-configs
==============
安装步骤
---------------

**建议安装 oh-my-dot 包括了vim/zsh/pip等的配置**

.. code-block:: bash

    curl https://raw.githubusercontent.com/lennyhbt/vim-configs/master/install.sh | bash -

或者

.. code-block:: bash

    wget https://raw.githubusercontent.com/lennyhbt/vim-configs/master/install.sh -O - | bash -

编译 YCM 插件(会自动编译，此步骤已不再需要)

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
参看requirements.txt

SHORTCUTS
==========
回车保存文件

vim leader按键为","

<C-P> ctrlp搜索
<leader>+空格    已打开buffer列表

<leader> s g c t e f i d 相应的cscope搜索

<F2> toggle paste mode
<F3> toggle show line number
<F4> toggle relative number
<F5> toggle nerdtree
<F6> toggle tagbar
<F7> (re)build cscope&tags
<F8> format code / autopep for python

<F9> connect cscope&tags

:VoomToogle rest/markdown/html...   开关voom tag

:PlugInstall 安装新插件
:PlugUpdate  更新插件

YCM相关：
----------
ycm配置文件的生成使用了rdnetto/YCM-Generator插件，在项目根目录下运行 `.vim/bundle/YCM-Generator/config_gen.py` 或者
在项目根目录下打开vim运行:YcmGenerateConfig 或 :CCGenerateConfig。
参考 `<https://github.com/rdnetto/YCM-Generator>`_

自动补全
<leader>jd 跳转到定义，没有找到定义则跳转到声明
<C-O> 跳回回退
<C-i> 跳转前进

snippets补全
--------------
更多请参考 `vim/bundle/vim-snippets/UltiSnips/` 目录。

c/c++
+++++++
inc/Inc
main/fun/fund
for/fori
st
printf/frpintf
def/ifndef/#if/eli

cl/ns/map/vector/tp

python
+++++++++
#!/ifmain/with/for/def/defc/defs
class/slotclass/contain/attr/desc

