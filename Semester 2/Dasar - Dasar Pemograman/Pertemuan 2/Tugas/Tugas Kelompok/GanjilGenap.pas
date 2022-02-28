program GanjilGenap;
uses crt;
var
bil : integer;
begin
    writeln('==========================================');read;
    writeln('       Menentukan Jenis Bilangan          ');read;
    writeln('==========================================');read;
    write('Masukan Bilangan :'); readln(bil);
        if bil mod 2 = 0 then
        writeln('Bilangan Genap')
        else
        writeln('Bilangan Ganjil');
        readKey;
end.