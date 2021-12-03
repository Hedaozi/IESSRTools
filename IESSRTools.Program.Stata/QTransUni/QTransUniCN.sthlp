{smcl}
{* 9 Dec 2020}{...}
{hline}
{hi:QTransUni}帮助
{hline}

{title:标题}

{p 4 4 2}
{bf:QTransUni} —— 快速转化文件编码到utf-8

{title:语法}

{p 4 4 2}
{cmdab:QTransUni}, {cmdab:path(string) filespec(string) }
[
{cmdab:baseEncoding(string) clear invalid}
]

{title:描述}

{p 4 4 2}
{cmd:QTransUni} 可以快速转化Stata 13及更早版本的文件编码到utf-8.

{title:选项}

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{cmd:path(}{it:string}{cmd:)}}文件目录。{p_end}
{synopt :{cmd:filespec(}{it:string}{cmd:)}}{it:filespec}可以是单个文件名称或包含{cmd:*}、{cmd:?}中的一个或多个的文件选择。查看{manhelp unicode_translate D:unicode translate}以了解更多。{p_end}
{synopt :{cmd:baseEncoding(}{it:string}{cmd:)}}源文件的编码，默认设置为gb18030。{p_end}
{synopt :{cmd:clear}}设置该选项会清空当前数据（{cmd:unicode translate}要求内存为空）。请在此操作前保存好数据。{p_end}
{synopt :{cmd:invalid}}将该选项传递给{cmd:unicode translate}。当文件含有无法转码的字符时，可以使用此选项。{p_end}

{title:例子}

{p 4 4 2} *- 转码dta文件。 {p_end}
{p 4 4 2}{inp:.} {cmd:QTransUni, path(YourPathToFilesDirectory) filespec(*.dta)}{p_end}

{p 4 4 2} *- 如果你的数据编码为gb2312。 {p_end}
{p 4 4 2}{inp:.} {cmd:QTransUni, path(YourPathToFilesDirectory) filespec(*.dta) baseEncoding(gb2312)}{p_end}

{p 4 4 2} *- 如果存在不能转码的字符。 {p_end}
{p 4 4 2}{inp:.} {cmd:QTransUni, path(YourPathToFilesDirectory) filespec(*.dta) invalid}{p_end}

{title:源码}

{p 4 4 2} *- 使用如下命令查看源码： {p_end}
{p 4 4 2}{inp:.} {stata `"viewsource QTransUni.ado"'}{p_end}

{title:作者}

{p 4 4 2}
{cmd:何凌锋}{break}
{cmd:西安交通大学 实证社会科学研究所 何凌锋}{break}
{cmd:E-mail: {browse "mailto:helingfeng@stu.xjtu.edu.cn":helingfeng@stu.xjtu.edu.cn}.} {break}
