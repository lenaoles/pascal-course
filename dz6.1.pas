//спросить у пользователя количество чисел, которые он будет вводить(заведомо меньше 100)
//последовательно спросить эти числа и записать в массив
//найти в массиве все числа, которые больше предыдущего
begin
  var arrayName: array [0..100] of real;  
  var numbersQty: Integer;
  repeat
    numbersQty := ReadInteger('Какое количество чисел в пределах 100 будут введены?')
  until numbersQty < 100;
  for var x := 1 to numbersQty do  
    arrayName[x] := ReadReal('Введите число: ');    
  for var y := 2 to numbersQty do
    begin
  if arrayName[y] > arrayName[y - 1] then
    write(arrayName[y], ' ');
  end;
end.