{smcl}
{* *! version 15.0  10december2019}{...}
{title:Title}

{pstd}
{hi: mydes} {hline 2}
描述变量


{marker syntax}{...}
{title:Syntax}

{phang2}
{cmd:mydes} {varlist} [{cmd:,} {it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{cmd:each}}依次描述各个变量{p_end}
{synopt :{cmd:tab}}列出变量的取值情况{p_end}
{synopt :{cmd:tabm}}列出变量的取值情况, 包括缺失值{p_end}

{marker description}{...}
{title:Description}

{pstd}
{cmd:mydes} 用于查看变量. 允许模糊匹配. 默认输出如下结果: 变量名列表, 变量列表的 {cmd:describe} 结果, 各变量的值标签, 变量列表的 {cmd:summarize} 结果.
{pstd}
For English help file, please use command "help mydesE"
