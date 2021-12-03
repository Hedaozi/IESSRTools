program define zero2hundred
	version 15.0
	syntax varlist
	foreach var of local varlist{
		egen `var'_max = max(`var')
		egen `var'_min = min(`var')
		replace `var' = (`var' - `var'_min) / (`var'_max - `var'_min) * 100
		drop `var'_max `var'_min
	}
end
