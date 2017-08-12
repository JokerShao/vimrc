# CSCOPE

## Options
*注意，生成的cscope.out和tags文件要在打开vim所在的文件夹，否则vim无法找到相关符号信息*

    ```
    -R: 在生成索引文件时，搜索子目录树中的代码
    -b: 只生成索引文件，不进入cscope的界面
    -k: 在生成索引文件时，不搜索/usr/include目录
    -q: 生成cscope.in.out和cscope.po.out文件，加快cscope的索引速度
    -i: 如果保存文件列表的文件名不是cscope.files时，需要加此选项告诉cscope到哪儿去找源文件列表。
        可以使用“-”，表示由标准输入获得文件列表。
    -I dir:在-I选项指出的目录中查找头文件
    -u: 扫描所有文件，重新生成交叉索引文件
    -C: 在搜索时忽略大小写
    -P path: 在以相对路径表示的文件前加上的path，这样，你不用切换到你数据库文件所在的目录也可以使用它了。
    -I 选项非常有用，用于将其他开发库头文件导入到cscope数据库，方便产看，开发；
    ```

## 使用

- :cw

    ```
    调出 quickfix
    ```

- add:增加一个新的cscope数据库/链接库

    ```
    使用方法：
        :cs add {file|dir} [pre-path] [flags]

    [pre-path] 就是以-p选项传递给cscope的文件路径，是以相对路径表示的文件
               前加上的path，这样你不要切换到你数据库文件所在的目录也可以使用它了。

    [flags]    你想传递给cscope的额外旗标
    ```

- kill:杀掉一个cscope链接（或者杀掉所有的cscope链接）
    
    ```
    使用方法：
        :cs kill {num|partial_name}
    ```

- reset：重新初始化所有的cscope链接。

    ```
    使用方法：
        :cs reset
    ```


- show：显示cscope的链接

    ```
    使用方法：
        :cs show
    ```

## about cscope in .vimrc
- cscopetag
    
    ```
    被设置，然后诸如”:tag”和ctrl+]和”vim -t”等命令会始终使用|:cstag|而不是默认的:tag行为。
    通过设置’cst’，你将始终同时查找cscope数据库和tags文件。默认情况是关闭的，例如：

              :set cst

              :set nocst
    ```

- csto

    ```
       ‘csto’的值决定了|:cstag|执行查找的顺序。假如’csto’被设置为0，那么cscope数据将会被优先查找，
       假如cscope没有返回匹配项，然后才会查找tag文件。反之，则查找顺序相反。默认值是0，例如：

              :set csto=0

              :set csto=1

    ```

- cscopeverbose
    
    ```
    没有被设置（默认情况是如此），那么当在增加一个cscope数据库时不会显示表示表示执行成功或失败的信息。
    理想情况是，在增加cscope数据库之前，你应该在你的|.vimrc|中重置此选项，在增加完之后，设置它。
    此后，当你在vim中增加更多的数据库时，你会得到（希望是有用的）信息展示数据库增加失败。例如：

              :set csverb

              :set nocsverb
    ```
- cspc

    ```
    的值决定了一个文件的路径的多少部分被显示。默认值是0，所以整个路径都会被显示。
    值为1的话，那么就只会显示文件名，不带路径。其他值就会显示不同的部分。例如：

              :set cspc=3

       将会显示文件路径的最后3个部分，包含这个文件名本身。
    ```
