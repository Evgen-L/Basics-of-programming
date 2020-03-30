PROGRAM Sort(INPUT, OUTPUT);
VAR
  F1: TEXT;
  Ch: CHAR;
PROCEDURE CopyText(VAR FromFile, ToFile: TEXT);
VAR
  Ch: CHAR;
BEGIN
  RESET(FromFile);
  REWRITE(ToFile); 
  WHILE NOT EOLN(FromFile)
  DO
    BEGIN
      READ(FromFile, Ch);
      WRITE(ToFile, Ch);
    END;
END;
BEGIN
  {Проверка успешности копирования текста из одного файла в другой}
  CopyText(INPUT, F1);
  RESET(F1); 
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(Ch);
    END;
END.
