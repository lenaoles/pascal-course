//сделать программу, которая будет работать как функция trim
//пользователь вводит строку, а ты ему в ответ выводишь строку без пробелов по бокам
begin
  var originLine := ReadString('Введите строку текста: '); 
  var begSpaceCount: Integer;
  for var k := 1 to originLine.Length do
    if originLine[k] = ' ' then
      begSpaceCount := begSpaceCount + 1
    else break;  
  var endSpaceCount: Integer;
  for var l := originLine.Length downto 1 do
    if originLine[l] = ' ' then
      endSpaceCount := endSpaceCount + 1
    else break;
  var trimLine := copy (originLine, begSpaceCount+1, originLine.Length-endSpaceCount-begSpaceCount);
  writeln('Результат: ''', trimLine, '''');
end.