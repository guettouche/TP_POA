package fiche2.aspects;

import fiche2.classes.E;


public aspect SameGroup {
	 
	//EXO 3 Q03
	
	declare soft: IllegalAccessException : within(SameGroup) && adviceexecution();

	pointcut equalizeCall(E source, E arg): call(void fiche2.classes.E.equalize(E)) && target(source) && args(arg) && withincode(void fiche2.classes.F.main(..));
	pointcut notSameGroup(E source, E arg): equalizeCall(source, arg);

	pointcut notSameGroupWithIf(E source, E arg): notSameGroup(source, arg) && if (source.getGroup() != arg.getGroup());


	before(E source, E arg): notSameGroupWithIf(source, arg) {
		throw new IllegalAccessException();
	}

}
