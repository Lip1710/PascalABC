//Irina. Homework 05.03.18.
program sort_letters;
var s: string;
    j,i,n: integer;
    p: char;
begin
 cls;
 write('Fill the string:');
 readln(s);
 // Sorting string for counting letters
 for j:=1 to length(s)-1 do
  for i:=1 to length(s)-j do
    if (s[i])>(s[i+1]) then
     begin
       p:=s[i];
       s[i]:=s[i+1];
       s[i+1]:=p;
     end;
 writeln('  Sorted string:',s);
 //Counting letters in the string
 p:=s[1];
 n:=0;
 for i:= 1 to length(s) do
   begin
     if p=s[i] then n:=n+1
     else begin
        writeln(p,' - ',n,' letters');
        p:=s[i];
        n:=1;
     end;
     if (i=length(s)) then writeln(p,' - ',n,' letters');
   end;
end.