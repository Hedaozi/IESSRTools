program QTransUni
	version 16.0
	syntax, path(string) filespec(string) [baseEncoding(string) clear invalid]
	
	if "`path'" == "" {
		di as error "path required."
		exit
	}
	if "`filespec'" == "" {
		di as error "filespec required."
		exit
	}
	
	if "`clear'" == "clear" {
		clear
	}
	
	if "`baseEncoding'" != "" {
		unicode encoding set `baseEncoding'
	}
	else {
		unicode encoding set "gb18030"
	}
	
	cd `path'
	
	if "`invalid'" == "" {
		unicode translate `filespec', transutf8
	}
	else {
		di "Escape invalid characters"
		unicode translate `filespec', transutf8 invalid
	}
end
