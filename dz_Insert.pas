//Insert, пользователь вводит строку
//потом номер символа после которого вставить вторую строку
//потом вторую строку
var
  originLineSymbols: array[0.. 198] of char; 
  insertLineSymbols: array[0.. 99] of char;
  originSymbolsQty: integer;
  insertSymbolsQty: integer;
  insertSymbolNumber: integer;

begin
  repeat
    begin
      writeln('Введите длину строки текста не более 100 символов:');
      readln(originSymbolsQty);
    end;
  until originSymbolsQty <= 100;  
  
  writeln('Введите строку текста:');//userLine1
  for var i := 0 to originSymbolsQty - 1 do read(originLineSymbols[i]); 
  
  repeat
    begin
      writeln('Введите номер символа после которого нужно вставить вторую строку (номер должен быть в диапазоне длины строки текста):');
      readln(insertSymbolNumber);
    end;
  until insertSymbolNumber <= originSymbolsQty;    
  
  repeat
    begin
      writeln('Введите длину строки вставляемого текста не более 100 символов:');
      readln(insertSymbolsQty);
    end;
  until insertSymbolsQty <= 100; 
  
  writeln('Введите строку текста:');//userLine2
  for var i := 0 to insertSymbolsQty - 1 do read(insertLineSymbols[i]);
  
  for var i := 0 to insertSymbolNumber - 1 do 
    write(originLineSymbols[i]);
  for var i := 0 to insertSymbolsQty - 1 do 
    write(insertLineSymbols[i]);
  for var i := insertSymbolNumber to originSymbolsQty - 1 do 
    write(originLineSymbols[i]);
  
end.