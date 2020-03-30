PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;
BEGIN {SarahRevere}  
  {Инициализация}
  Looking := TRUE;
  Land := FALSE;
  Sea := FALSE;
  IF NOT EOLN
  THEN
    READ(W1);
  IF NOT EOLN
  THEN
    READ(W2);
  IF NOT EOLN
  THEN
    READ(W3);    
  IF NOT EOLN
  THEN
    READ(W4);
  WHILE ((Looking) AND NOT(Land OR Sea))  
  DO
    BEGIN
      {проверка окна на land}
      Land := ((W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd'));
      {проверка окна на sea}
      Sea := ((W1 = 's') AND (W2 = 'e') AND (W3 = 'a'));
      {проверка окна на Looking}
      Looking := (NOT EOLN);
      {движение окна}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
    END;
  {проверка правильного присвоения значений переменным}  
  WRITELN('Land: ', Land);
  WRITELN('Sea: ', Sea);
  WRITELN('Looking: ', Looking);
END.  {SarahRevere}
