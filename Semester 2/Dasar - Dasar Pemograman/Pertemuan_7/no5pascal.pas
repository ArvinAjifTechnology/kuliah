program AplikasiPenjualanObat;

uses crt;
var
namaobat : string;
banyakkaplet : integer;
potongan,harga, totalharga : real;
begin
clrscr;
writeln('Aplikasi Penjualan Obat');
writeln('=======================');

writeln('Nama Obat : ');readln(namaobat);
writeln('Banyak Kaplet : ');readln(banyakkaplet);
harga:=banyakkaplet*25000;

if banyakkaplet >50 then
begin
    potongan:=harga*0.10;
end
else if banyakkaplet <= 50 then
begin
    potongan:=harga*0.05;
end;

totalharga:=harga-potongan;
writeln('=================');
writeln('Hasil Perhitungan');
writeln('=================');
writeln('Nama Obat : ', namaobat);
writeln('Banyak Kaplet : ', banyakkaplet);
writeln('Total Harga :Rp ', harga:5:0);
writeln('Potongan :Rp ', potongan:5:0);

end.
