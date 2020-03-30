PROGRAM SortMonth(INPUT, OUTPUT);
USES DateIO;
VAR
  Mo1, Mo2: Month;
BEGIN
  ReadMonth(INPUT, Mo1);  
  ReadMonth(INPUT, Mo2);
  WriteMonth(OUTPUT, Mo1);
  WRITE(' ');
  WriteMonth(OUTPUT, Mo2);   
END.  
