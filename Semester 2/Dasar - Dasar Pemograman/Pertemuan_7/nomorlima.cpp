#include <stdio.h>
#include <conio.h>


 int main () {
    char namaobat[20];
    int banyakkaplet; 
    float potongan, harga, totalHarga;
    printf ("Aplikasi Pembuatan Obat\n");
    printf ("Input data \n");
    printf ("Nama Obat : \n"); scanf("%s", & namaobat);
    printf ("Banyak kaplet : ");
    scanf ("%d", & banyakkaplet);

    harga = banyakkaplet*25000;
    if (banyakkaplet <=50){
        potongan=harga*0.05;
    }
    else {
        potongan=harga*0.10;
    }

    totalHarga=harga-potongan;
    printf("Hasil Perhitungan\n");
    printf("\nNama Obat : %s",namaobat);
    printf("\nBanyak obat : %d",banyakkaplet);
    printf("\nTotal Harga : %2.1f",harga);
    printf("\nPotongan Harga : %2.1f",potongan);
}
