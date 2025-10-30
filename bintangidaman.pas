program bintangidamanku;
uses crt;
var //deklarasi variabel 
    i, n : integer; //i dan n kita mau harus bilangan bulat maka diberi tipe integer
begin //langsung mulaii
clrscr;//bersihkan layar dari teks teks mengganggu

for i:= 1 to 8 do //pakai perulangan for 1 sampai 8 karena ada 8 baris dan memang diwajibkan pakai perulangan
    begin //mulai
    if i = 4 then //cek i, kalau i = 4 maka..
        for n:= 1 to i do //dari n = 1 sampai 4 (karena i adalah 4) lakukan
        begin //mulai
            write ('**') //tampilkan 2 bintang ke samping (sampai 4 kali sesuai jumlah perulangan)
        end //akhiri
    
    else if i = 5 then //selain itu cek i, kalau i = 5 maka...
        for n := 1 to 7 do //dari 1 sampai 7 (7 kali perulangan) lakukan..
        begin// mulai
            write ('*') //tampilkam 1 bintang kesamping (sampai 7 kali sesuai jumlah perulangan)
        end//akhiri

    else //selain dua kondisi yaitu  i = 4 dan i = 5, maka..
    for n := 1 to i do //dari 1 sampai i (kecuali i=4 dan i=5, karena merupakan kondisi utama) lakukan
    begin //mulai
        write('*') //tampilkan * kesamping
    end; //akhiri
    writeln; //agar setelah 1 baris selesai tidak nyambung ke samping maka dibutuhkan writeln

    end; //akhir dari siklus 1 sampai 8
    
end.//selesai