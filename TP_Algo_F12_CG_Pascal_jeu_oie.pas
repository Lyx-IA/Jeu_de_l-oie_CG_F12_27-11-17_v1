program jeu_oie;

uses crt;

CONST
	case_mort=58; 
	case_fin=66; 

VAR
	pos, des:INTEGER;

BEGIN

	clrscr;
	pos:=0;
	REPEAT
		clrscr;
		writeln('Votre position actuelle est ',pos); 

		{REPEAT 
			writeln('Entrez le resultat de vos des');
			readln(des);

		UNTIL (des>=2)AND(des<=12); }
		randomize;
		des:=random(11)+2;
		pos:=pos+des;
	IF (pos MOD 9=0) AND (pos<>63) AND (pos>1) THEN
		des:=des*2;
		pos:=pos+des;
	IF pos>66 THEN
		pos:=case_fin-(pos-case_fin);
	IF pos=case_mort THEN
	BEGIN
		writeln('Mince.. Vous retournez a la case depart');
		pos:=0;
	END;
	readln;
	UNTIL pos=case_fin;
	writeln('Victoire !');
	readln;
END.
