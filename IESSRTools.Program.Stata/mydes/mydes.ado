program define mydes
	version 15.0
	syntax varlist[, Each Tab Tabm]
	if "`each'" == ""{
		des `varlist', varlist
		local vars: di r(varlist)
		foreach item of local vars{
			local temp: value label `item'
			local labs `labs' `temp'
			di
			if "`temp'" != ""{
				di as txt "Variable `item' matches to value label `temp'."
				lab list `temp'
			}
			else{
				di as txt "Variable `item' doesn't match to a specific value label."
			}
		}
		if "`labs'" != ""{
			lab list `labs'
		}
		sum `varlist'
		if "`tab'" != "" & "`tabm'" == ""{
			foreach item of local vars{
				tab `item'
			}
		}
		if "`tabm'" != ""{
			foreach item of local vars{
				tab `item', m
			}
		}
	}
	else{
		di
		di
		di as txt "Variables are:"
		ds `varlist'
		di
		local vars: di r(varlist)
		foreach item of local vars{
			di
			di as txt "Description of Variable `item':"
			des `item'
			local temp: value label `item'
			di
			if "`temp'" != ""{
				di as txt "Variable `item' matches to value label `temp'."
				lab list `temp'
			}
			else{
				di as txt "Variable `item' doesn't match to a specific value label."
			}
			sum `item'
			if "`tab'" != "" & "`tabm'" == ""{
				tab `item'
			}
			if "`tabm'" != ""{
				tab `item', m
			}
			di
		}
	}
end

