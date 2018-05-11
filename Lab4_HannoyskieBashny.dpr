program Lab4_HannoyskieBashny;

{$APPTYPE CONSOLE}

uses
  SysUtils, Windows;

Var n,Num:integer;

procedure VsegoPerest(n:integer);
var count,i:integer;
begin
  count:=1;
  for i:=1 to n do
    count:=count*2;
  count:=count-1;
  writeln('Всего перестановок: ',count);
end;

procedure PerstKolec (n:integer; a,b,c:integer);
begin
  if n=1 then begin
    inc(Num);
    writeln (Num,') ','с ',a,' кольца ','на ', c,' кольцо');
    end
  else
    begin
      PerstKolec(n-1,a,c,b);
      inc(Num);
      writeln(Num,') ','с ',a,' кольца ','на ',c,' кольцо');
      PerstKolec(n-1,b,a,c);
    end;
end;

begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);
  repeat;
  write('Введите количество колец: ');
  readln(n);
  until (n>0);
  writeln;
  VsegoPerest(n);
  writeln;
  Num:=0;
  PerstKolec(n,1,2,3);
  readln;
end.
