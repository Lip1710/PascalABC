//Irina.  HomeWork from 12.03.2018. Replacing two words in a string and their letters
program replace;
var s,s1,s2,k,p:string;
    i,n: integer;

begin
 write('   Fill the string with two words : ');
 readln(s);
 //Replacing two words
 for i:=1 to length(s) do if s[i]=' ' then n:= i;
 p:='';
 for i:=1 to (n-1) do p:=p+s[i];
 k:='';
 for i:=n+1 to length(s) do k:=k+s[i];
 s1:=k+' '+p;
 writeln('Replacing two words: ',s1);
 // Replacing letters
 p:='';
 for i:=1 to (n-1) do p:=s[i]+p;
 k:='';
 for i:=n+1 to length(s) do k:=s[i]+k;
 s1:=k+' '+p;
 writeln('Way 1 of replacing letters: ',s1);
 for i:=1 to length(s) do s2:=s[i]+s2;  // Replacing letters 2 (Invert whole string)
 writeln('Way 2 of replacing letters: ',s2);
end.