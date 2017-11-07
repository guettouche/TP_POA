package fiche2.aspects;

public aspect Granularity {
	
	//EXO 3 Q02
	pointcut getMember(): get(private * fiche2.classes..*);
	
	pointcut setMember(): set(private * fiche2.classes..*);
	
	
	pointcut members(): getMember() || setMember();
	

	pointcut accessMember(Object objThis, Object objTarget): members() && this(objThis) && target(objTarget);
	

	pointcut sameObject(Object objThis, Object objTarget): accessMember(objThis, objTarget) && if (!objThis.equals(objTarget));
	
	declare soft: IllegalAccessException : within(Granularity) && adviceexecution();
	

	
}
