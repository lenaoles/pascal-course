//сделать программу, которая будет работать как функция trim
//пользователь вводит строку, а ты ему в ответ выводишь строку без пробелов по бокам
begin
  var originLine := ReadString('Введите строку текста: '); 
  var begSpaceCount: Integer;
  for var k := 1 to originLine.Length do
    if originLine[k] = ' ' then
      begSpaceCount := begSpaceCount + 1
    else break;
  //for var i := 1 to begSpaceCount do
    //originLine[i] := (originLine[i + 1]);
  delete(originLine, 1, begSpaceCount);  
  var endSpaceCount: Integer;
  for var l := originLine.Length downto 1 do
    if originLine[l] = ' ' then
      endSpaceCount := endSpaceCount + 1
    else break;
  delete(originLine, originLine.Length-endSpaceCount+1, endSpaceCount);
  writeln('Результат: ''', originLine, '''');
end.