#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function FitClampData(len, refwave [appendix])
	// Geranerate Datapoints to Display the Fitfunction (A Biexponential-Decay)
	// if there is only one Decaychannel, just delete one of the process-waves (fast- or slow-)
	// Inputparameter:
	// 	len: number of Datapoints (resolution of the plotted fit)
	//	refwave: Reference-Wave (Data of measured survival times)
	//	appendix: piece of text which gets appended to the created waves
	
	Variable len		// determines the length of xvec 
	String appendix	// append to wavenames xwave, fast_process, slow_process
	WAVE refwave	// Wave with measured bond rupture times
	
	String wavename1
	String wavename2
	String wavename3
	
	// Create Wavenames
	if (!ParamIsDefault(appendix))
		wavename1 = "xwave_" + appendix
		wavename2 = "fast_process_" + appendix
		wavename3 = "slow_process_" + appendix
	else
		wavename1 = "xwave"
		wavename2 = "fast_process"
		wavename3 = "slow_process"
	endif
	
	
		
	// Kill all internal Waves prior to usage
	KillWaves /Z $wavename1, $wavename2, $wavename3
	
	// Finally generate dummy waves for fit data
	Make /O /N=(len) calculation_dummy_1
	Make /O /N=(len) calculation_dummy_2
	Make /O /N=(len) calculation_dummy_3 
	calculation_dummy_1 = p*wavemax(refwave)/len
	
	// Rename waves
	Rename calculation_dummy_1 $wavename1
	Rename calculation_dummy_2 $wavename2
	Rename calculation_dummy_3 $wavename3
	
	AppendToTable $wavename1, $wavename2, $wavename3
	
END