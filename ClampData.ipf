#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function ClampData(xvec)
	// sorts measured survival times of clamp experiments in an ascending order, as a praperation for fitting
	// and create an appropriate y-wave (yvec)
	
	// inputparameter:
	// xvec: Wave with unsorted survival times
	WAVE xvec
	
	Sort xvec, xvec
	Make /O /N=(numpnts(xvec)) yvec
	yvec = (p+1)
	yvec = yvec/numpnts(yvec)
	Sort /R yvec, yvec 
	AppendToTable yvec
	
END