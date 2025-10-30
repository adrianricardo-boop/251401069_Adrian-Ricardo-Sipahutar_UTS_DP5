program angkarahasia;
uses crt;
var //deklarasi variabel
 n : integer; //variabel n harus integer karena kita hanya menerima bilangan bulat


begin //mulai
clrscr; //bersihkan layar
repeat //kita pakai perulangan repeat biar bisa check di akhir lalu mengulangi hingga sampai kondisi yang ditentukan dicapai
    textcolor(white); // biar warna pertanyaan selalu putih di setiap perulangan
    write ('masukkan angka tebakan = '); //menampilkan input tebak tebakan cuy
    readln (n); //membaca inputan dalam variabel n

    textcolor(red); //kasih warna merah kalau salah biar keren
    if (n > 7) then //kita misalkan angka misteri adalah 7, maka kalau inputan lebih dari 7...
        writeln ('terlalu besar') //menampilkan "terlalu besar"
    else if (n < 7) then //kalau inputan lebih kecil dari 7 maka...
        writeln ('terlalu kecil'); //menampilkan "terlalu kecil"
    writeln; //agar ada jarak di antara tebakan

until (n=7); //apabila inputan sesuai kondisi (dalam hal ini 7) maka akan keluar dari loop dan..

textcolor(green); //warna ijo biar kesannya benar bangett
write ('Selamat, Kamu benar !') //langsung menampilkan teks ucapan selamat!

end. //selesaiii