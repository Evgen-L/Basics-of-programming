PROGRAM RevString(INPUT, OUTPUT);
PROCEDURE Reverse(VAR FileInp: TEXT);
VAR
  Ch: CHAR;
BEGIN{Reverse}
  IF NOT EOLN(FileInp)
  THEN
    BEGIN
      READ(FileInp, Ch);
      Reverse(FileInp);
      WRITE(Ch)
    END;
END;{Reverse}
BEGIN{RevString}
  Reverse(INPUT);
END.{RevString}
