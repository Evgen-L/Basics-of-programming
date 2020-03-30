PROGRAM SarahRevere(INPUT, OUTPUT);
{ѕечать сообщени€ о том как идут британцы,
 в зависимости от того, первым во входе встречаетс€
'land' или 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := 'Y';
  WHILE Looking = 'Y'
  DO
    BEGIN
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF W4 = '#'
      THEN
        Looking := 'N';
      IF (W1 = 'l') AND  (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd')
      THEN
        Looking := 'L';
      IF (W2 = 's') AND (W3 = 'e') AND (W4 = 'a')
      THEN
        Looking := 'S';
    END;
  IF Looking = 'L'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Looking = 'S'
    THEN
      WRITELN('The British coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say')
END. {Sarah revere}

PROGRAM SarahRevere(INPUT, OUTPUT);
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;
BEGIN {SarahRevere}  
  {»нициализаци€}
  WHILE Looking AND NOT (Land OR Sea)  
  DO
    BEGIN
      {движение окна}
      {проверка окна на land}
      {проверка окна на sea}
    END;
  {создание сообщени€ Sarah}
END.  {SarahRevere}

{проверка окна на land}        
Land := (W1 = СlТ) AND (W2 = СaТ) AND (W3 = СnТ) AND (W4 = СdТ)
{проверка окна на sea}
Sea := (W1 = СsТ) AND (W2 = СeТ) AND (W3 = СaТ)