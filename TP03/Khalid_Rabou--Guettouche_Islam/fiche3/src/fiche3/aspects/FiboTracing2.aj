package fiche3.aspects;

import org.aspectj.lang.JoinPoint;

public aspect FiboTracing2 {
	
	pointcut traceRecu() : FiboTracing3.toBeTraced();
	
	private int niveau =0;
	

	before() : traceRecu()
	{
		
		//System.out.print(begin(thisJoinPoint));
		niveau++;
	}
	
	after() returning(Object res): traceRecu()
	{
		niveau--;
		//System.out.print(end(thisJoinPoint,res));
		
	}
							

}
