PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  Ch1, Ch2, Ch3, Ch4: CHAR;
  Looking, Land, Sea: BOOLEAN;
PROCEDURE CheckSeaLand(VAR Ch1, Ch2, Ch3, Ch4: CHAR; VAR Land, Sea, Looking: BOOLEAN);
BEGIN
  WHILE ((Looking) AND NOT(Land OR Sea))  
  DO
    BEGIN
      {проверка окна на land}
      Land := ((Ch1 = 'l') AND (Ch2 = 'a') AND (Ch3 = 'n') AND (Ch4 = 'd'));
      {проверка окна на sea}
      Sea := ((Ch1 = 's') AND (Ch2 = 'e') AND (Ch3 = 'a'));
      {проверка окна на Looking}
      Looking := (NOT EOLN);
      {движение окна}
      IF Looking
      THEN
        BEGIN
          Ch1 := Ch2;
          Ch2 := Ch3;
          Ch3 := Ch4;
          READ(Ch4)
        END
    END;
END;
 
PROCEDURE MessageFromSarah(VAR Land, Sea: BOOLEAN);
BEGIN
  {создание сообщения Sarah}  
  IF Land
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Sea
    THEN
      WRITELN('The British coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say')
END;  

BEGIN {SarahRevere}  
  {Инициализация}
  Looking := TRUE;
  Land := FALSE;
  Sea := FALSE;
  IF NOT EOLN
  THEN
    READ(Ch1);
  IF NOT EOLN
  THEN
    READ(Ch2);
  IF NOT EOLN
  THEN
    READ(Ch3);    
  IF NOT EOLN
  THEN
    READ(Ch4);
  CheckSeaLand(Ch1, Ch2, Ch3, Ch4, Land, Sea, Looking);
  MessageFromSarah(Land, Sea)
END.  {SarahRevere}
