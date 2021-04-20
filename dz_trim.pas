//сделать программу, которая будет работать как функция trim
//пользователь вводит строку, а ты ему в ответ выводишь строку без пробелов по бокам
//сделать программу, которая будет работать как функция trim
//пользователь вводит строку, а ты ему в ответ выводишь строку без пробелов по бокам
begin
  var originLine := ReadString('Введите строку текста: '); 
  if originLine[1] = ' ' then 
  begin
    for var i := 1 to originLine.Length - 1 do
      originLine[i] := (originLine[i + 1]);
    delete(originLine, originLine.Length, 1);
  end;
  if(originLine[originLine.Length]) = ' ' then 
    delete(originLine, originLine.Length, 1);
  writeln('Результат: ''', originLine, '''');
end.