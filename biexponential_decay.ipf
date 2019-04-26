Function biexponential_decay(w,x) : FitFunc
	Wave w
	Variable x

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(x) = A1*exp(-k1*x)+A2*exp(-k2*x)
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 1
	//CurveFitDialog/ x
	//CurveFitDialog/ Coefficients 4
	//CurveFitDialog/ w[0] = A1
	//CurveFitDialog/ w[1] = A2
	//CurveFitDialog/ w[2] = k1
	//CurveFitDialog/ w[3] = k2

	return w[0]*exp(-w[2]*x)+w[1]*exp(-w[3]*x)
End
