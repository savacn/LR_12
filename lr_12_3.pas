program lr_12_3;

var
  filetext: text;
  s: string;

begin
  writeln('Введите строку для добавления:');
  readln(s);
  assign(filetext, 'text.txt');
  append(filetext);
  writeln(filetext, s);
//  writeln(filetext, #13);
  close(filetext);
end.