package fiche2.aspects;

	public aspect TestAspect{
			private int count=0;
		pointcut Q01():
			
			//Exo01 Q01
			preinitialization(fiche2.classes.*.new(..)) ||
			initialization(fiche2.classes.*.new(..)) ||
			execution(fiche2.classes.*.new(..)) ||
			call(fiche2.classes.*.new(..))|| 
			
			//Exo01 Q02+03
			call(* fiche2.classes.*.*(..))||
			//Exo01 Q03
			execution(* fiche2.classes.Test.main(..))||
			//Exo01 04
			set(* fiche2.classes.*.*);
		
		before() : Q01(){		
			print();
			System.out.println("Entree : " + thisJoinPointStaticPart);
			count++;
		}
		
		after() : Q01(){
			count--;
			print();
			System.out.println("Sortie : " + thisJoinPointStaticPart);	
		}
		public void print(){
			for(int i = 0; i < count; i++)
				System.out.print("|  ");
		}
	}

