//надо сделать IndexOf,пользователь вводит две строки
//надо найти позицию, с которой начинается вторая строка в первой
//если попадания нет, то скажи пользователю что-нибудь плохое
begin
  var originLine := ReadString('Введите строку текста: ');   
  var partOfOriginLine := ReadString('Введите часть строки которую нужно найти: ');
  var index: integer; 
  for var x := 1 to originLine.Length do
    if originLine[x] = partOfOriginLine[1] then 
      if partOfOriginLine.Length > 1 then
      begin
        for var y := 1 to partOfOriginLine.Length - 1 do
          if originLine[x + y] <> partOfOriginLine[1 + y]
            then index:=0
          else index := x
      end
      else index := x
    else continue; 
  if index = 0
    then writeln('error')
    else writeln('Индекс: ', index);
end.