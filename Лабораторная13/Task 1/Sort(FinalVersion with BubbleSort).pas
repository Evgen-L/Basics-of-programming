PROGRAM Sort(INPUT, OUTPUT);
VAR
  F1: TEXT;
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

PROCEDURE BubbleSort(VAR BeforeSort: TEXT);
VAR 
  Sorted, Ch1, Ch2: CHAR;
  AfterSort: TEXT;
BEGIN
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      Sorted := 'Y';
      RESET(BeforeSort);
      REWRITE(AfterSort);
      IF NOT EOLN(BeforeSort)
      THEN
        BEGIN             
          READ(BeforeSort, Ch1);
          WHILE NOT EOLN(BeforeSort)
          DO
            BEGIN
              READ(BeforeSort, Ch2);
              IF Ch1 <= Ch2
              THEN
                BEGIN
                  WRITE(AfterSort, Ch1);
                  Ch1 := Ch2
                END
              ELSE
                BEGIN
                  WRITE(AfterSort, Ch2);
                  Sorted := 'N'
                END
            END;
          WRITELN(AfterSort, Ch1)
        END;
      CopyText(AfterSort, BeforeSort);
    END;
END;
BEGIN
  CopyText(INPUT, F1);
  BubbleSort(F1);
  CopyText(F1, OUTPUT);
END.
