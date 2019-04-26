#pragma rtGlobals=3		// Use modern global access method and strict wave access.
Function Bi_Exponential_Decay(w,x) : FitFunc
	Wave w
	Variable x

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(x) = A*exp(-k1*x)+(1-A)*exp(-k2*x)
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 1
	//CurveFitDialog/ x
	//CurveFitDialog/ Coefficients 3
	//CurveFitDialog/ w[0] = A
	//CurveFitDialog/ w[1] = k1
	//CurveFitDialog/ w[2] = k2

	return w[0]*exp(-w[1]*x)+(1-w[0])*exp(-w[2]*x)
End