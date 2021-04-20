//Insert, пользователь вводит строку
//потом номер символа после которого вставить вторую строку
//потом вторую строку
begin
  var originLine := ReadString('Введите строку текста: ');  
  write('Введите номер символа после которого нужно вставить вторую строку (номер в диапазоне длины строки текста): ');
  var insertSymbolNumber: integer;
  readln(insertSymbolNumber);
  var insertLine := ReadString('Введите вставляемую подстроку: ');
  var originLine1: string;
  for var i := 1 to insertSymbolNumber do
    originLine1 := originLine1 + (originLine[i]);
  var originLine2: string;
  for var i := insertSymbolNumber + 1 to originLine.Length do
    originLine2 := originLine2 + (originLine[i]);
  var resustLine: string;
  resustLine := originLine1 + insertLine + originLine2;  
  writeln('Результат: ', resustLine);  
end.

//originLine1 := copy(originLine, 1, insertSymbolNumber);
//originLine2 := copy(originLine, insertSymbolNumber+1, originLine.Length);