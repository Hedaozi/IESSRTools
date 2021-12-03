{smcl}
{* 9 Dec 2020}{...}
{hline}
{hi:margin3d}帮助
{hline}

{title:标题}

{p 4 4 2}
{bf:margin3d} —— 使用Stata-Python API绘制3D边际图

{title:语法}

{p 4 4 2}
{cmdab:margin3d}
varlist(min=3
max=3
numeric)
[{cmd:,}
{it:options}]

{title:选项}

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :标题}
{synopt :{opt t:itle(string)}}图标题，默认为空。 {p_end}
{synopt :{opt x:title(string)}}X轴标题，默认为变量X的变量名。{p_end}
{synopt :{opt y:title(string)}}Y轴标题，默认为变量Y的变量名。{p_end}
{synopt :{opt z:title(string)}}Z轴标题，默认为变量Z的变量名。{p_end}

{syntab :导出}
{synopt :{opt s:how}}如果传递，则展示交互式3D图形窗口。{p_end}
{synopt :{opt s:aving(string)}}保存路径，默认为Margins3d.png。{p_end}
{synopt :{opt d:pi(#)}}分辨率，默认为1200。{p_end}

{title:例子}

{p 4 4 2}{inp:.} {cmd:webuse nhanes2}{p_end}
{p 4 4 2}{inp:.} {cmd:logistic highbp c.age##c.weight}{p_end}
{p 4 4 2}{inp:.} {cmd:quietly margins, at(age=(20(5)80) weight=(40(5)180)) saving(predictions, replace)}{p_end}
{p 4 4 2}{inp:.} {cmd:use predictions, clear}{p_end}
{p 4 4 2}{inp:.} {cmd:rename _at1 age}{p_end}
{p 4 4 2}{inp:.} {cmd:rename _at2 weight}{p_end}
{p 4 4 2}{inp:.} {cmd:rename _margin pr_highbp}{p_end}
{p 4 4 2}{inp:.} {cmd:save predictions, replace}{p_end}
{p 4 4 2}{inp:.} {cmd:margin3d age weight pr_highbp, t("Probability of Hypertension by Age and Weight") x("Age (years)") y("Weight (kg)") z("Probability of Hypertension") s s(Hello.png)}{p_end}

{title:源码}

{p 4 4 2} *- 使用以下命令查看源码： {p_end}
{p 4 4 2}{inp:.} {stata `"viewsource margin3d.ado"'}{p_end}

{title:作者}

{p 4 4 2}
{cmd:何凌锋}{break}
{cmd:西安交通大学 实证社会科学研究所}{break}
{cmd:E-mail: {browse "mailto:helingfeng@stu.xjtu.edu.cn":helingfeng@stu.xjtu.edu.cn}.} {break}
