//спросить у пользователя количество чисел, которые он будет вводить(заведомо меньше 100)
//последовательно спросить эти числа и записать в массив
//найти в массиве все числа, которые больше предыдущего
begin
  var userNumbers: array [0..100] of real;  
  var numbersQty: Integer;
  repeat
    numbersQty := ReadInteger('Какое количество чисел в пределах 100 будут введены?')
  until numbersQty < 100;
  for var j := 0 to numbersQty-1 do  
    userNumbers[j] := ReadReal('Введите число: ');    
  for var j := 1 to numbersQty-1 do
    begin
  if userNumbers[j] > userNumbers[j - 1] then
    write(userNumbers[j], ' ');
  end;
end.