program define cleanoutlier
	version 15.0
	syntax varname[, Generate(name) Replace Strict(real 3)]
	if "`generate'" != ""{
		confirm new var `generate'
	}
	display
	display as text "summarize `varlist'"
	sum `varlist'
	local mean = r(mean)
	local sd = r(sd)
	display
	if "`replace'" == ""{
		if "`generate'" == ""{
			local vn `varlist'_clean
		}
		else{
			local vn `generate'
		}
		display as text "New variable `vn' generates."
		gen `vn' = `varlist' if `varlist' >= `mean' - `strict' * `sd' & `varlist' <= `mean' + `strict' * `sd'
		display
	}
	else{
		if "`generate'" != ""{
			display as text "The ordinary variable `varlist' is named `generate' now."
			rename `varlist' `generate'
			local vn `generate'
		}
		else{
			local vn `varlist'
		}
		replace `vn' =. if `vn' <= `mean' - `strict' * `sd' | `vn' >= `mean' + `strict' * `sd'
	}
	display as text "summarize `vn'"
	sum `vn'
end

