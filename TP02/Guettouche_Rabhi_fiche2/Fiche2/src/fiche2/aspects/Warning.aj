package fiche2.aspects;

public aspect Warning {

	// Exo 4
	
	pointcut notInConstructorE(): !withincode(fiche2.classes.E.new(..));
	
	pointcut callDnew(): call(fiche2.classes.D.new(..)) && notInConstructorE();
	
	declare warning: callDnew(): "erreur de compilation";

}
