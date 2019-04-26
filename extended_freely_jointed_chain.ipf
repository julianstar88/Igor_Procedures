#pragma rtGlobals=3		// Use modern global access method and strict wave access.
#include <Global Fit 2>

Function extended_freely_jointed_chain(w,F) : FitFunc
	Wave w
	Variable F

	//CurveFitDialog/ These comments were created by the Curve Fitting dialog. Altering them will
	//CurveFitDialog/ make the function less convenient to work with in the Curve Fitting dialog.
	//CurveFitDialog/ Equation:
	//CurveFitDialog/ f(F) = Lc*(coth(F*lk/(kb*T))-kb*T/(F*lk))*(1+F/(Ks*lk))
	//CurveFitDialog/ End of Equation
	//CurveFitDialog/ Independent Variables 1
	//CurveFitDialog/ F
	//CurveFitDialog/ Coefficients 5
	//CurveFitDialog/ w[0] = Ks
	//CurveFitDialog/ w[1] = Lc
	//CurveFitDialog/ w[2] = lk
	//CurveFitDialog/ w[3] = kb
	//CurveFitDialog/ w[4] = T

	return w[1]*(coth(F*w[2]/(w[3]*w[4]))-w[3]*w[4]/(F*w[2]))*(1+F/(w[0]*w[2]))
End