{smcl}
{* *! version 15.0  10december2019}{...}
{title:Title}

{pstd}
{hi: cleanoutlier} {hline 2}
清除异常值


{marker syntax}{...}
{title:Syntax}

{phang2}
{cmd:cleanoutlier} {varname} [{cmd:,} {it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{opth gen:erate(varname)}}生成的新变量名{p_end}
{synopt :{cmd:replace}}直接修改原变量{p_end}
{synopt :{opt strict(#)}}判断异常值所用的标准差数; 默认为3.{p_end}

{marker description}{...}
{title:Description}

{pstd}
{cmd:cleanoutlier} 用于清除异常值, 默认生成一列新变量, 变量名为原变量名后接_clean.
{pstd}
For English help file, please use command "help cleanoutlierE"
