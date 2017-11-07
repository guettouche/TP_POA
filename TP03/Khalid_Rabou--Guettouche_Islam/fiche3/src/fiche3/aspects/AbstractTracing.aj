package fiche3.aspects;

import org.aspectj.lang.JoinPoint;

public abstract aspect AbstractTracing {

	abstract pointcut toBeTraced();
	abstract String begin(JoinPoint jp);
	abstract String end(JoinPoint jp,Object res);
	
}
