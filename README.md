## Hannoyskie Bashny
### Lab №4 (2 sem)
### Task:
Display all permutations of a number.

### Code:

```
		program Lab4_perestanovki;

		{$APPTYPE CONSOLE}

		uses
		  SysUtils, Windows;
		
		Type TA=array[1..50] of integer;
		Var A:TA;
		    i,n,per,j,temp,Num:integer;

		function Factorial(N:Integer):Integer;
		begin
		  if N=0 then
		    Result:=1
		  else
		    Result:=N*Factorial(N-1);
		end;

		procedure VvodRazmer;
		begin
		  repeat;
		  write(Введите размерность числа: ');
		  readln(n);
		  until (n>=0);
		end;

		procedure VvodChisla(count:integer);
		begin
		    for i:=1 to count do
		      begin
		        write('A[',i,']=');
		        readln(A[i]);
		      end;
		end;

		procedure Perestanovki(l,r:integer; var k:integer);
		var i,temp,j:integer;
		begin
		  if (l=r) then
		    begin
		    write(Num:5,') ');
		    for i:=1 to n do
		      write(a[i]:2);
		    writeln;
		    k:=k+1;
		    Num:=Num+1;
		    end
		  else
		    begin
		    for i:=l to r do
		      begin
		      temp:=a[l];
		      a[l]:=a[i];
		      a[i]:=temp;
		      Perestanovki(l+1,r,k);
		      temp:=a[l];
		      a[l]:=a[i];
		      a[i]:=temp;
		      end;
		    end;
		end;
		
		begin
		  SetConsoleCP(1251);
		  SetConsoleOutputCP(1251);
		
		  VvodRazmer;
		  writeln;
		
		  writeln('Введите число: ');
		  VvodChisla(n);
		  writeln;
		
		  per:=Factorial(n);
		  writeln('Всего перестановок: ',n,'!= ',per);
		  Num:=1;
		  Perestanovki(1,n,per);
		  writeln;
		  writeln('Нажмите Enter для выхода');
		  readln;
		end.
```
