{smcl}
{* 9 Dec 2020}{...}
{hline}
help for {hi:QTransUni}
{hline}

{title:Title}

{p 4 4 2}
{bf:QTransUni} —— Quickly translate Stata 13 and earlier files to utf-8

{title:Syntax}

{p 4 4 2}
{cmdab:QTransUni}, {cmdab:path(string) filespec(string) }
[
{cmdab:baseEncoding(string) clear invalid}
]

{title:Description}

{p 4 4 2}
{cmd:QTransUni} can quickly translate old version files to utf-8 encoding.

{title:Chinese Help File}

{p 4 4 2} *- 如果你想看中文帮助： {p_end}
{p 4 4 2}{inp:.} {stata `"help QTransUniCN"'}{p_end}

{title:Options}

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{cmd:path(}{it:string}{cmd:)}}The directory where files are located. {p_end}
{synopt :{cmd:filespec(}{it:string}{cmd:)}}{it:filespec} is a single filename or a file specification 
containing {cmd:*} and {cmd:?} specifying one or more files. For more details, see {manhelp unicode_translate D:unicode translate}.{p_end}
{synopt :{cmd:baseEncoding(}{it:string}{cmd:)}}The encoding of source files. Default gb18030. {p_end}
{synopt :{cmd:clear}}If pass, it will clear your memory ({cmd:unicode translate} requires empty memory). Before this operation, please save your data.{p_end}
{synopt :{cmd:invalid}}Pass invalid options to {cmd:unicode translate}. You should pass this option when there are files not translated for containing unconvertable characters. {p_end}

{title:Examples}

{p 4 4 2} *- Translate your dta files. {p_end}
{p 4 4 2}{inp:.} {cmd:QTransUni, path(YourPathToFilesDirectory) filespec(*.dta)}{p_end}

{p 4 4 2} *- If your data is gb2312. {p_end}
{p 4 4 2}{inp:.} {cmd:QTransUni, path(YourPathToFilesDirectory) filespec(*.dta) baseEncoding(gb2312)}{p_end}

{p 4 4 2} *- If there are something cannot be translated after set suitable encoding. {p_end}
{p 4 4 2}{inp:.} {cmd:QTransUni, path(YourPathToFilesDirectory) filespec(*.dta) invalid}{p_end}

{title:Source}

{p 4 4 2} *- If you want to view source of this command, use {p_end}
{p 4 4 2}{inp:.} {stata `"viewsource QTransUni.ado"'}{p_end}

{title:Author}

{p 4 4 2}
{cmd:Lingfeng, He}{break}
{cmd:IESSR, Xi'an Jiaotong University.}{break}
{cmd:E-mail: {browse "mailto:helingfeng@stu.xjtu.edu.cn":helingfeng@stu.xjtu.edu.cn}.} {break}
