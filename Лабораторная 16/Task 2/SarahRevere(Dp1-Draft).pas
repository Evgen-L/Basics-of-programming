PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;
BEGIN {SarahRevere}  
  {Инициализация}
  Looking := TRUE;
  Land := FALSE;
  Sea := FALSE;
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  WRITELN;
  WHILE ((Looking) AND NOT(Land OR Sea))  
  DO
    BEGIN
      {проверка движения окна}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF (W4 <> '#')
      THEN
        WRITE(W4);
    END; 
  WRITELN;   
END.  {SarahRevere}
