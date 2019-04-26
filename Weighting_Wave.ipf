#pragma rtGlobals=3		// Use modern global access method and strict wave access.
// Create a Wave for the Weighting of the residuals of the fit
Function Weighting_Wave(residuals)
	WAVE residuals
	
	Variable i
	Make /O /N=(numpnts(residuals)) wi
	WaveStats residuals
	for (i=0;i<numpnts(residuals);i+=1)
		 if (residuals[i]<V_sdev)
		 	wi[i] = 1
		 else
		 	wi[i] = 1e9
		 endif
	endfor
	AppendToTable wi
END