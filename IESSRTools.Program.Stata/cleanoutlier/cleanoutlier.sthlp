{smcl}
{* *! version 15.0  10december2019}{...}
{title:Title}

{pstd}
{hi: cleanoutlier} {hline 2}
Clean outliers


{marker syntax}{...}
{title:Syntax}

{phang2}
{cmd:cleanoutlier} {varname} [{cmd:,} {it:options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{opth gen:erate(varname)}}The new variable's name{p_end}
{synopt :{cmd:replace}}Directly change ordinary variable{p_end}
{synopt :{opt strict(#)}}Outlier is value out of (mean - # * std, mean + # * std). Default 3. {p_end}

{marker description}{...}
{title:Description}

{pstd}
{cmd:cleanoutlier} cleans outliers. Without setting {cmd:generate} and {cmd:replace}, a variable with "_clean" suffix will be created.
