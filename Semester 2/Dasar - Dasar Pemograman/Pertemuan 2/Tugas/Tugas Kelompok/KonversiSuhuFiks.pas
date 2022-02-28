// Judul Program
program KonversiSuhu;
uses crt;
// Deklarasikan Suhu
const
    kelvin = 273;

var
    c : real;
    suhu : integer;

begin
    clrscr;
    writeln('=============================');
    write('Masukan Suhu Celcius =');read(c);
    writeln('=============================');
    suhu :=c+kelvin;
    writeln('Kelvin =', suhu);
end.