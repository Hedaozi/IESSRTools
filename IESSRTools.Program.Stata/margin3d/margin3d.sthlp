{smcl}
{* 9 Dec 2020}{...}
{hline}
help for {hi:margin3d}
{hline}

{title:Title}

{p 4 4 2}
{bf:margin3d} —— Using Stata-Python API to draw 3D margin plot

{title:Syntax}

{p 4 4 2}
{cmdab:margin3d}
varlist(min=3
max=3
numeric)
[{cmd:,}
{it:options}]

{title:Options}

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :Title}
{synopt :{opt t:itle(string)}}The title. Default as null. {p_end}
{synopt :{opt x:title(string)}}The title of x axis. Default as variable x's name.{p_end}
{synopt :{opt y:title(string)}}The title of y axis. Default as variable y's name.{p_end}
{synopt :{opt z:title(string)}}The title of z axis. Default as variable z's name.{p_end}

{syntab :Export}
{synopt :{opt s:how}}If pass, the interactive window of plot will show.{p_end}
{synopt :{opt s:aving(string)}}The saving path. Default as Margins3d.png. {p_end}
{synopt :{opt d:pi(#)}}The dpi. Default as 1200. {p_end}

{title:Examples}

{p 4 4 2}{inp:.} {cmd:webuse nhanes2}{p_end}
{p 4 4 2}{inp:.} {cmd:logistic highbp c.age##c.weight}{p_end}
{p 4 4 2}{inp:.} {cmd:quietly margins, at(age=(20(5)80) weight=(40(5)180)) saving(predictions, replace)}{p_end}
{p 4 4 2}{inp:.} {cmd:use predictions, clear}{p_end}
{p 4 4 2}{inp:.} {cmd:rename _at1 age}{p_end}
{p 4 4 2}{inp:.} {cmd:rename _at2 weight}{p_end}
{p 4 4 2}{inp:.} {cmd:rename _margin pr_highbp}{p_end}
{p 4 4 2}{inp:.} {cmd:save predictions, replace}{p_end}
{p 4 4 2}{inp:.} {cmd:margin3d age weight pr_highbp, t("Probability of Hypertension by Age and Weight") x("Age (years)") y("Weight (kg)") z("Probability of Hypertension") s s(Hello.png)}{p_end}

{title:Chinese Help File}

{p 4 4 2} *- 如果你想看中文帮助： {p_end}
{p 4 4 2}{inp:.} {stata `"help margin3dCN"'}{p_end}

{title:Source}

{p 4 4 2} *- If you want to view source of this command, use {p_end}
{p 4 4 2}{inp:.} {stata `"viewsource margin3d.ado"'}{p_end}

{title:Author}

{p 4 4 2}
{cmd:Lingfeng, He}{break}
{cmd:IESSR, Xi'an Jiaotong University.}{break}
{cmd:E-mail: {browse "mailto:helingfeng@stu.xjtu.edu.cn":helingfeng@stu.xjtu.edu.cn}.} {break}
