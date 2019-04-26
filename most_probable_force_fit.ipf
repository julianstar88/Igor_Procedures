Function most_probable_force_fit(w,FLR) : FitFunc
	Wave w
	Variable FLR

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(FLR) = kb*T/dx*log(FLR*dx/(koff*kb*T))
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 1
	//CurveFitDialog/ FLR
	//CurveFitDialog/ Coefficients 4
	//CurveFitDialog/ w[0] = dx
	//CurveFitDialog/ w[1] = koff
	//CurveFitDialog/ w[2] = kb
	//CurveFitDialog/ w[3] = T

	return w[2]*w[3]/w[0]*log(FLR*w[0]/(w[1]*w[2]*w[3]))
End