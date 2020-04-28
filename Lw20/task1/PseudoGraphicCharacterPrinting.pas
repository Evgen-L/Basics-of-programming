PROGRAM PseudoGraphicCharacterPrinting(INPUT, OUTPUT);
TYPE
  MaxMinCoordinates = SET OF 1..25;
VAR 
  LetterCoordinates: MaxMinCoordinates;
  Ch: CHAR;
  i: INTEGER;
PROCEDURE ReadLetter(VAR Ch: CHAR);
BEGIN
  READ(Ch);
  CASE Ch OF
    'A': LetterCoordinates := [3, 7, 9, 11, 15..20, 21, 25]; 
    'B': LetterCoordinates := [1..4, 6, 10..14, 16, 20..24];
    'C': LetterCoordinates := [2..6, 11, 16, 22..25];
    'D': LetterCoordinates := [1..4, 6, 10..11, 15..16, 20..24];
    'E': LetterCoordinates := [1..6, 11..16, 21..25];
    'F': LetterCoordinates := [1..6, 11..13, 16, 21];
    'G': LetterCoordinates := [2..4, 6, 11, 13..16, 20, 22..24];
    'H': LetterCoordinates := [1, 5, 6, 10..16, 20, 21, 25];
    'I': LetterCoordinates := [1..5, 8, 13, 18, 21..25];
    'J': LetterCoordinates := [1..5, 8, 13, 16, 18, 22];
    'K': LetterCoordinates := [1, 4, 6, 8, 11..12, 16, 18, 21, 24];
    'L': LetterCoordinates := [1, 6, 11, 16, 21..25];
    'M': LetterCoordinates := [1, 5, 6, 7, 9, 10..11, 13, 15..16, 20..21, 25];
    'N': LetterCoordinates := [1, 5..7, 10..11, 13, 15..16, 19..21, 25];
    'O': LetterCoordinates := [2..4, 6, 10..11, 15..16, 20, 22..24];
    'P': LetterCoordinates := [1..3, 6, 9, 11..12, 13, 16, 21];
    'Q': LetterCoordinates := [2..4, 6, 10..11, 15..16, 19, 22..23, 25];
    'R': LetterCoordinates := [1..3, 6, 9, 11..13, 16, 18, 21, 24];
    'S': LetterCoordinates := [2..5, 6, 12, 13..14, 20..24];
    'T': LetterCoordinates := [1..5, 8, 13, 18, 23];
    'U': LetterCoordinates := [1, 5..6, 10..11, 15..16, 20, 22..24];
    'V': LetterCoordinates := [1, 5, 7, 9, 12, 14, 18];
    'W': LetterCoordinates := [1, 5..6, 10, 11, 13, 15..16, 18, 20, 22, 24];
    'X': LetterCoordinates := [1, 5, 7, 9, 13, 17, 19, 21, 25];
    'Y': LetterCoordinates := [1, 5, 7, 9, 13, 18, 23];
    'Z': LetterCoordinates := [1..5, 9, 13, 17, 21..25];
    ' ': LetterCoordinates := []
  ELSE
    WRITELN('Sorry, invalid character entered')  
  END;  
END;
PROCEDURE PrintLetter(VAR LetterCoordinates: MaxMinCoordinates; i: integer);
BEGIN
  IF LetterCoordinates <> []
  THEN
    BEGIN
      FOR i := 1 TO 25 
      DO
        BEGIN
          IF i IN LetterCoordinates
          THEN
            WRITE('X')
          ELSE
            WRITE(' ');
          IF i mod 5 = 0
          THEN
            BEGIN
              WRITELN('');
              IF i = 25
              THEN
                WRITELN('')
            END  
        END
    END;
END;
BEGIN
  WHILE NOT EOLN
  DO
    BEGIN
      ReadLetter(Ch);
      PrintLetter(LetterCoordinates, i)   
    END    
END.  
