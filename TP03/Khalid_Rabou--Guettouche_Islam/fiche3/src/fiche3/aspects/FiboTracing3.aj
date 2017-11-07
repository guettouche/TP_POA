package fiche3.aspects;

import org.aspectj.lang.JoinPoint;

public aspect FiboTracing3 extends AbstractTracing{

	pointcut toBeTraced(): FiboConfig.fiboCall()  ;
	
	String begin(JoinPoint jp){
		
		return "recCompute("+jp.getArgs()[0]+")";
	}
	String end(JoinPoint jp,Object res){
		return "f("+jp.getArgs()[0]+") ="+res;
	}
}
