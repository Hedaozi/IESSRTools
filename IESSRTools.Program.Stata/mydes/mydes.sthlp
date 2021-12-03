{smcl}
{* *! version 15.0  10december2019}{...}
{title:Title}

{pstd}
{hi: mydes} {hline 2}
Describe Variables


{marker syntax}{...}
{title:Syntax}

{phang2}
{cmd:mydes} {varlist} [{cmd:,} {it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{cmd:each}}Describe variables one by one{p_end}
{synopt :{cmd:tab}}List value of variables{p_end}
{synopt :{cmd:tabm}}List value of variables, include missing values{p_end}

{marker description}{...}
{title:Description}

{pstd}
{cmd:mydes} describes variables. Ambiguous variables' name are allowed. In defalut case, result include: varlist, {cmd:describe} result of varlist, value labels of each variables, {cmd:summarize} result of varlist.
