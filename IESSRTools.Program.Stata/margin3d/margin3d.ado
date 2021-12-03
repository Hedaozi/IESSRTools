program define margin3d
	syntax varlist(min=3 max=3 numeric) [, Title(string) Xtitle(string) Ytitle(string) Ztitle(string) Show Saving(string) Dpi(integer 1200)]
	args x y z
	local z: subinstr local z "," ""
	python: import numpy as np
	python: import pandas as pd
	python: import matplotlib
	python: import matplotlib.pyplot as plt
	python: from sfi import Data
	python: matplotlib.use('TkAgg')
	python: ax = plt.axes(projection='3d')
	python: x = Data.get(var = "`x'")
	python: y = Data.get(var = "`y'")
	python: z = Data.get(var = "`z'")
	python: ax.plot_trisurf(x, y, z, cmap = plt.cm.Spectral_r)
	if "`title'" != "" {
		python: ax.set_title("`title'")
	}
	if "`xtitle'" == "" {
		python: ax.set_xlabel("`x'")
	}
	else {
		python: ax.set_xlabel("`xtitle'")
	}
	if "`ytitle'" == "" {
		python: ax.set_ylabel("`y'")
	}
	else {
		python: ax.set_ylabel("`ytitle'")
	}
	python: ax.zaxis.set_rotate_label(False)
	if "`ztitle'" == "" {
		python: ax.set_zlabel("`z'", rotation = 90)
	}
	else {
		python: ax.set_zlabel("`ztitle'", rotation = 90)
	}
	python: ax.view_init(elev = 30, azim = 240)

	if "`saving'" == "" {
		local saving Margins3d.png
	}

	python: plt.savefig("`saving'", dpi = `dpi')
	di as smcl `"Click to Open File:  {browse "`saving'"}"'

	if "`show'" != "" {
		python: plt.show()
	}
end
