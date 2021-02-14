//сделать программу, которая будет работать как функция trim
//пользователь вводит строку, а ты ему в ответ выводишь строку без пробелов по бокам
begin
  var userLineSymbols: array[0.. 99] of char; 
  var symbolsQty: integer;
  writeln('Введите длину строки текста не более 100 символов:');
  readln(symbolsQty);
  writeln('Введите строку текста:');//userLine
  for var i := 0 to symbolsQty - 1 do read(userLineSymbols[i]); 
  
  while userLineSymbols[0] = ' ' do
  begin
    for var i := 0 to symbolsQty - 1 do
      userLineSymbols[i] := userLineSymbols[i + 1];
    symbolsQty := symbolsQty - 1;
  end;
  
  while userLineSymbols[symbolsQty-1] = ' ' do
    symbolsQty := symbolsQty - 1;
  
  write('Строка текста без пробелов ''');
  for var i := 0 to symbolsQty - 1 do write(userLineSymbols[i]); 
  write('''');
end.