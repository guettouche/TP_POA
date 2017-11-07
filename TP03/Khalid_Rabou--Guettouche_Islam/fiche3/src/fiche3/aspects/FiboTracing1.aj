package fiche3.aspects;

public aspect FiboTracing1 {
	
	pointcut traceRecu(int n) : call(long fiche3.classes.Fibo.recCompute(int)) && args(n);
	
	private int niveau =0;
	
	
	before(int n) : traceRecu(n)
	{
		for(int i=0;i<niveau;i++) System.out.print("|  ");
		System.out.println("recCompute("+n+")");
		niveau++;
	}
	
	after(int n) returning(long r)  : traceRecu(n)
	{
		niveau--;
		for(int i=0;i<niveau;i++) System.out.print("|  ");
		System.out.println("f("+n+") ="+r);
		
	}
}
