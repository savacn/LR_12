program lr_12_7;
var
  z1, z2: text;
  i, j, k, n, s: integer;
begin
  assign(z1, 'z3.in.txt');
  reset(z1);
  readln(z1, n);
  close(z1);
  for i:=1 to n do begin
    k:=0;
    for j:=1 to i do
    if (i mod j = 0) then
      inc(k);
    if k = 5 then
      s+=i;
    end;
  assign(z2, 'z3.out.txt');
  rewrite(z2);
  write(z2, s);
  close(z2);
end.