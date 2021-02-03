//спроси у пользователя 5 чисел и заполни ими массив
begin
  var myCoolArray: array [0..4] of real;  
  for var x := 0 to 4 do
  begin
    var userNumber := ReadReal('Введите число ');
    myCoolArray[x] := userNumber;
  end;    
  for var i := 0 to 4 do  
    write(myCoolArray[i], ' ');  
end.