program lr_12_6;
var
  F1,F2: Text;
  line: string;
begin
 Assign(F1, 'text6_input.txt');
 Assign(F2,'text6_output.txt');
 Reset(F1);
 Rewrite(F2);
 While not eof(F1) do
  begin
   Readln(F1, line);
   if line<>'' then Writeln(F2,line);
  end;
 Close(F1);
 Close(F2);
end.