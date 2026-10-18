# UTS_Daspro_CC-Chill-Chill_C
## Judul Proyek
Trashify: Smart Trash Bank and Point Exchange System 
### Deskripsi
TRASHIFY adalah program sederhana simulasi bank sampah digital berbasis bahasa pemrograman Pascal yang bertujuan untuk meningkatkan kesadaran masyarakat dalam menjaga lingkungan sekitar. Program ini memudahkan pengguna dalam menyetorkan sampah dengan mendapatkan poin berdasarkan jenis dan berat sampah yang disetorkan, kemudian poin yang terkumpul dapat ditukarkan menjadi nilai uang dengan beberapa pilihan layanan e-wallet.
### Anggota Kelompok
| No |      Nama Lengkap      |    NIM    | KOM | Laboratorium |
|----|------------------------|-----------|-----|--------------|
| 1  | Alya Fatiha Tampubolon | 261401047 |  C  |       5      |
| 2  | Zahra Safira Wansyah   | 261401128 |  C  |       6      |
| 3  | Nabilah Zahra Siahaan  | 261401138 |  C  |       6      |
### Fitur Utama Program
1. **Menu Utama**

Menu utama menampilkan pilihan fitur yang tersedia dalam program Trashify, yaitu setor sampah, cek saldo poin, tukar poin ke e-wallet, laporan transaksi, dan keluar. Program menggunakan (case of) untuk menjalankan fitur sesuai pilihan pengguna dan repeat until agar menu terus ditampilkan sampai pengguna memilih keluar.

2. **Setor Sampah**

Pengguna dapat memilih jenis sampah yang tersedia dan memasukkan berat sampah yang ingin disetorkan berdasarkan kilogram (kg). 
Jenis sampah dan poin per kg yaitu:
- Plastik (10 poin/kg)
- Kertas  (5 poin/kg)
- Kardus  (8 poin/kg)
- Logam   (15 poin/kg)
- Kaca    (6 poin/kg)

Program menggunakan for untuk menampilkan daftar jenis sampah dan case of untuk menentukan poin berdasarkan jenis sampah yang dipilih. Percabangan (if-then -else) digunakan untuk memeriksa apakah berat sampah valid, sedangkan perulangan (while-do) digunakan untuk meminta pengguna memasukkan ulang berat sampah jika beratnya kurang dari atau sama dengan 0. Poin dihitung dari berat sampah dikalikan dengan nilai poin per kilogram, lalu dibulatkan menggunakan (round) dan ditambahkan ke saldo pengguna. 

3. **Cek Saldo Poin**

Fitur ini menampilkan ID, nama, saldo poin, dan nilai uang yang dimiliki pengguna. Nilai uang dihitung dengan mengalikan saldo poin dengan Rp100. Dengan ini, pengguna dapat mengetahui jumlah poin yang dimiliki dan nilai uangnya setelah melakukan setor sampah atau tukar poin.

4. **Tukar Poin ke E-Wallet**

Pengguna dapat menukar poin menjadi uang melalui beberapa pilihan layanan e-wallet, yaitu GoPay, DANA, ShopeePay, dan OVO. Setelah memilih e-wallet, Pengguna memasukkan nomor tujuan, serta menentukan jumlah poin yang ingin ditukar. Program menggunakan (if) untuk memeriksa apakah saldo mencukupi dan jumlah poin yang dimasukkan valid. Jika jumlah poin lebih dari 0 dan tidak melebihi saldo, poin akan dikurangi dari saldo menggunakan operasi pengurangan, sedangkan total poin keluar akan diperbarui. Program kemudian menampilkan bukti penukaran yang berisi jumlah poin yang ditukar, nominal uang, sisa saldo, dan status transaksi. Nilai penukaran dihitung dengan ketentuan 1 poin = Rp100.

5. **Laporan Transaksi**

Fitur ini menampilkan rangkuman aktivitas transaksi pengguna selama program berjalan. Informasi yang ditampilkan yaitu, ID pengguna, nama, total berat sampah yang disetorkan, total poin masuk, total poin yang ditukar, dan saldo poin saat ini.

6. **Keluar**
   
Perulangan (repeat until menu =  5) digunakan agar menu utama terus ditampilkan selama pengguna belum memilih menu keluar. Jika pengguna mengakhiri program melalui menu keluar maka program akan akan berhenti dan menampilkan pesan penutup setelah selesai menggunakan TRASHIFY

