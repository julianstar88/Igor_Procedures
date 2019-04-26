#pragma rtGlobals=3		// Use modern global access method and strict wave access.
// Plot Graphs in a Pretty form.
// Inputparameter:
// x,y: Input Data-Waves
// xlabel, ylabel: Strings, labeling x and y axis (has to be in a form like: xlabel="labeltxt")
// scaling: scaling of axes
//	linlin: double linear scaling
//	linlog, loglin: Half logarithmic scaling 
//	loglog: Double logarithmic scaling
Function PrettyPrint (y,x [xlabel,ylabel,scaling,windowName])
	WAVE x,y
	String xlabel,ylabel,scaling	
	String windowName
	String cmd = ""
	
	// Make Graph
	Display y vs x 
	ModifyGraph mode=3,marker=19,rgb=(0,0,0)
	ModifyGraph msize=2
	ModifyGraph grid(bottom)=1,gridRGB(bottom)=(21760,21760,21760)
	ModifyGraph grid(left)=1,gridRGB(left)=(21760,21760,21760)
	SetAxis/A bottom 
	//SetAxis left 0.08,1.1
	
	// Change Window Name
	if (!ParamIsDefault(windowName))
		sprintf cmd, "DoWindow /C %s", windowName
		Execute /Q cmd
	endif
	
	// Set Axisscaling to desired values
	if (!ParamIsDefault(scaling))
		if ( stringmatch(scaling, "linlin") )
			ModifyGraph log(left)=0
			ModifyGraph log(bottom)=0
		elseif ( stringmatch(scaling, "loglin") )
			ModifyGraph log(left)=1
			ModifyGraph log(bottom)=0
		elseif ( stringmatch(scaling, "linlog") )
			ModifyGraph log(left)=0
			ModifyGraph log(bottom)=1
		endif
	endif
	
	// set Xlabel and Ylabel to desired Values
	if (!ParamIsDefault(xlabel))
		Label bottom  "\\Z14"+xlabel+"\Z01\K(65535,65535,65535)\u"
	endif
	if (!ParamIsDefault(ylabel))
		Label left "\\Z14"+ylabel+"\Z01\K(65535,65535,65535)\u"
	endif
	
END