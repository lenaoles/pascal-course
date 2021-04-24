//надо сделать IndexOf,пользователь вводит две строки
//надо найти позицию, с которой начинается вторая строка в первой
//если попадания нет, то скажи пользователю что-нибудь плохое
begin
  var originLine := ReadString('Введите строку текста: ');   
  var partOfOriginLine := ReadString('Введите часть строки которую нужно найти: ');
  var index: integer;
  
  if partOfOriginLine.Length < 2 then
    for var i := 1 to originLine.Length do  
      if originLine[i] = partOfOriginLine[1] then
      begin
        index := i;
        writeln(index);
      end
      else continue
  else    
  begin
    for var y := 1 to originLine.Length do    
      if originLine[y] = partOfOriginLine[1] then
      begin
        for var x := 1 to partOfOriginLine.Length - 1 do    
          if originLine[y + x] = partOfOriginLine[x + 1] then
          begin
            index := y;
            writeln(index);
          end
          else writeln('error')
      end
      else continue
  end;
end.