program cicipunyatoko; 
uses crt; 
var //pemberian variabel
    buku, pulpen, pensil, penghapus, penggaris, sebelum, potongan : longint;//pake longint karena range datanya ga muat kalau pake integer
    metode : string;//qris dan tunai sebagai opsi, berupa kumpulan karakter
    potongandiskon, diskon, pajak, totalakhir : real;//karena ada potensi angka berkoma beberapa variabel harus real
    


begin //mulai
clrscr; //membersihkan layar dari tampilan awal sebelum mulai
writeln ('--daftar harga barang--'); //7 baris kebawah adalah daftar harga barang, tapi sepertinya ga disuruh, inisiatif aja
writeln ('Buku      = Rp 25000');
writeln ('Pulpen    = Rp 5000');
writeln ('Pensil    = Rp 3000');
writeln ('Penghapus = Rp 2000');
writeln ('Penggaris = Rp 4000');
writeln ('-----------------------');

write ('masukkan jumlah buku      = '); //teks pertanyaan jumlah buku
readln (buku); //input jumlah buku
write ('masukkan jumlah pulpen    = ');//teks pertanyaan jumlah pulpen
readln (pulpen); //input jumlah pulpen
write ('masukkan jumlah pensil    = ');//teks pertanyaan jumlah pensil
readln (pensil); //input jumlah pensil
write ('masukkan jumlah penghapus = ');//teks pertanyaan jumlah penghapus
readln (penghapus);//input jumlah penghapus
write ('masukkan jumlah penggaris = ');//teks pertanyaan jumlah penggaris
readln (penggaris);//input jumlah penggaris
write ('metode pembayaran (QRIS/tunai) = ');//teks pertanyaan metode pembayaran
readln (metode);//input metode pembayaran
writeln;

sebelum := (buku*25000) + (pulpen*5000) + (pensil*3000) + (penghapus*2000) + (penggaris*4000);// perhitungan harga sebelum diskon
writeln ('Total harga sebelum diskon = Rp ', sebelum); //menampilkan harga sebelum diskon

if (sebelum >= 100000) then //membuat kondisi jika total belanja lebih dari atau sama dengan 100000...
    diskon:= (sebelum*0.1) // maka diskonnya 10% dari harga asli
    else // selain kondisi diatas..
    diskon:= 0; // diskonnya 0

if metode = 'tunai' then //kalaun metode pembayarannya tunai...
    begin //memulai jika kondisi metode tunai
        pajak:= (sebelum*0.05); // maka pajak yang harus dibayar adalah 5% dari total belanja
        potongan := 0; //dan potongannya 0
    end //akhir dari jika kondisi metode tunai
    else //apabila metode pembayaran tidak tunai (dalam hall ini qris)...
    begin //memulai jika kondisi selain tunai
        pajak := 0; //maka pajaknnya 0
        potongan := 5000; // mendapat potongan 5000
    end; //akhir dari jika kondisi tunai


potongandiskon:= (diskon + potongan); //operasi untuk menghitung berapa banyak diskon dan potongan yang didapat

writeln ('Seluruh potongan dan diskon = Rp ', potongandiskon:0:0); //menampilkan jumlah diskon dan potongan


totalakhir := (sebelum - potongandiskon + pajak); //menghitung total belanja setelah potongan, diskon, dan pajak
writeln('Total akhir = Rp ', totalakhir:0:0); //menampilkan total belanja yang harus dibayar

end.