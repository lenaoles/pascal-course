Begin
var a:integer;
var b:integer;
var c:integer;
a := ReadInteger ('Целое число а: ');
b := ReadInteger ('Целое число b: ');
c:= a;
a:= b;
b:= c;
Writeln ('now a = ', a, '; now b = ', b);
End.