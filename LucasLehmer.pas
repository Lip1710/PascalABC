Program LucasLehmer;
var
  s, n: integer;
  i, exponent: integer;
begin
  cls;
  n := 1;
  for exponent := 2 to 31 do
  begin
    if exponent = 2 then
      s := 0
    else
      s := 4;
    n := (n + 1)*2 - 1;  // This saves from needing the math unit for exponentiation
    writeln('n = ', n);
    for i := 1 to exponent-2 do
      s := (s*s - 2) mod n;
    if s = 0 then
      writeln('M', exponent, ' is PRIME!');
  end;
end.