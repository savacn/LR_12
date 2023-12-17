program lr_12_4;

var
  filetext, temp: text;
  k, lnum: integer;
  l: string;
  found: boolean;
  
begin
  writeln('Введите номер строки k:');
  readln(k);
  
  assign(filetext, 'text.txt');
  assign(temp, 'temp.txt');
  reset(filetext);
  rewrite(temp);

  while not eof(filetext) do
  begin
    readln(filetext, l);
    lnum:=lnum+1;
    if lnum=k then
    begin
      writeln(temp, '');
      found:=true; 
    end;
    writeln(temp, l);
  end;
  
  close(filetext);
  close(temp);

  if not found then
    writeln('Строки под номером ', k, ' нет в файле.');
  erase(filetext);
  rename(temp, 'text.txt');
end.
