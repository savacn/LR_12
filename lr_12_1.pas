program lr_12_1;
var
   filetext: text;
   i:integer;
begin
assign(filetext,'c:\text.txt');
rewrite(filetext);
for i:=1 to 10 do begin
    writeln (filetext, i);
    end;
close(filetext);
reset(filetext);
for i:=1 to 10 do begin
    readln (filetext);
    writeln (i);
end;
close(filetext);
end.