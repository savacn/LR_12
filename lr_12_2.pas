program lr_12_2;
var
  filetext: text;
  i, j, n, k: integer;
begin
  readln(n, k);
  assign(filetext, 'zzvv.txt');
  rewrite(filetext);
for i:=1 to n do begin
    for j:=1 to k do begin
      print(filetext, '*');
    writeln(filetext, #13);
    end;
end;
  close(filetext);
end.