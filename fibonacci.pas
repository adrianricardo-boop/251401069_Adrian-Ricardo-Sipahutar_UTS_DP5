program fibonacci;
uses crt;
var //deklarasi variabel
    i, n, a, b, c, d : integer; //semua variabel wajib bilangan bulat
begin //mulai
clrscr; //berihkan layar 
write ('N = '); //mmenampilkan permintaan unutuk input batas sampai suku ke berapa
readln (n); //inputan suku ke n

a:= 0; //memberikan nilai awal untuk variabel disini a =0
b:= 1; //untuk b = 1
d:= 0; //untuk d = 0

if n = 1 then //untuk inputan n = 1 terpisah dari loop, karena tidak nyambung sehingga kita buat kondisi sendiri
begin //mulai
  writeln ('Sequence = ', a); //tuliskan sequence = a yaitu 0
  write ('Total = ', a); //tuliskan total dimana total = a
end //akhiri

else if n = 2 then //begitupun dengan inputan n = 2, jadi dibuat kondisi sendiri
begin //mulai
  writeln ('Sequence = ', a, ', ', b); //tampilkan tulisan "sequence = a, b"
  write ('Total = ', a + b); //tampilkan "total = a + b" dimana hasilnya pasti 1
end //akhiri

else //nahh cuma dua aja kok kondisi khusunya, maka selain dua kondisi di atas
begin //mulai
write ('Sequence = ', a, ', ', b, ', '); //untuk dua nilai awal dapat ditulis langsung

 for i := 3 to n do // perulangan untuk nilai ke 3 dan seterusnya sampai suku ke n...
  begin //mulai

    c := a + b; //operasi dimana c = a + b, nilai perulangan peertama pasti lah satu
    d := d + c; //nahh variabel d saya gunakan untuk menjumlahkan seluruh suku, sehingga di akhir bisa ditampilkan totalnya

    if i = n then //kita buat sebuah kondisi agar bilangan terakhi atau saat i=n , maka...
        writeln (c) //yang ditulis hanya nilai c saja
    else //sedangkan selain bilangan terakhir...
    write(c, ', '); //menampilkan nilai c dengan didampingi koma dan spasi

    a := b; //setelah itu nilai a akan naik jadi setara nilai b
    b := c; //sedangkan nilai b akan naik jadi setara c
    
    //siklus akan diulangi dari 3 sampai n kali
  end; //siklus berakhir saat i menyentuh n

d:= d + 1 ; //setelah siklus beraklhir karena total penjumlahan dimulai dari suku ke 3, maka kita tambahkan suku pertama dan kedua yaitu 0 dan 1, untuk menyempurnakan hasil akhir
write ('Total = ', d); //menampilkan hasil penjumlahan semua suku
end;//mengakhiri kondisi else ini
end. //selesaiiii