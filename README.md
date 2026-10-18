# UTS_Daspro_CC-Chill-Chill_C
## Judul Proyek
**Trashify: Smart Trash Bank and Point Exchange System** 
### Deskripsi
TRASHIFY adalah program sederhana simulasi bank sampah digital berbasis bahasa pemrograman Pascal yang bertujuan untuk meningkatkan kesadaran masyarakat dalam menjaga lingkungan sekitar. Program ini memudahkan pengguna dalam menyetorkan sampah dengan mendapatkan poin berdasarkan jenis dan berat sampah yang disetorkan, kemudian poin yang terkumpul dapat ditukarkan menjadi nilai uang dengan beberapa pilihan layanan e-wallet.
### Anggota Kelompok
| No |      Nama Lengkap      |    NIM    | KOM | Laboratorium |
|----|------------------------|-----------|-----|--------------|
| 1  | Alya Fatiha Tampubolon | 261401047 |  C  |      5       |
| 2  | Zahra Safira Wansyah   | 261401128 |  C  |      6       |
| 3  | Nabilah Zahra Siahaan  | 261401138 |  C  |      6       |
### Fitur Utama Program
1. **Menu Utama**

Menu utama menampilkan pilihan fitur yang tersedia dalam program Trashify yaitu:

* Setor Sampah
* Cek Saldo Poin
* Tukar Poin Ke E-Wallet
* Laporan Transaksi
* Keluar

Program menggunakan (case of) untuk menjalankan fitur sesuai pilihan pengguna dan (repeat until) agar menu terus ditampilkan sampai pengguna memilih keluar.

2. **Setor Sampah**

Pengguna dapat memilih jenis sampah yang tersedia dan memasukkan berat sampah yang ingin disetorkan berdasarkan kilogram (kg). 
Jenis sampah dan poin per kg yaitu:
- Plastik (10 poin/kg)
- Kertas  (5 poin/kg)
- Kardus  (8 poin/kg)
- Logam   (15 poin/kg)
- Kaca    (6 poin/kg)

Program menggunakan (for) untuk menampilkan daftar jenis sampah, (case of) untuk menentukan poin berdasarkan jenis sampah yang dipilih, (if-then -else) untuk memeriksa pilihan, (while-do)  untuk memvalidasi berat sampah, dan continue untuk melanjutkan perulangan yang sedang berjalan. Poin dihitung dari berat sampah dikalikan dengan nilai poin per kilogram, lalu dibulatkan menggunakan (round) dan ditambahkan ke saldo pengguna.

3. **Cek Saldo Poin**

Fitur ini menampilkan ID, nama, saldo poin, dan nilai uang yang dimiliki pengguna.
Nilai uang dihitung dengan perhitungan: Nilai Uang = Saldo Poin x Rp100

Dengan ini, pengguna dapat mengetahui jumlah poin dan nilai uang yang dimiliki setelah melakukan setor sampah atau tukar poin.

4. **Tukar Poin ke E-Wallet**

Pengguna dapat menukar poin menjadi uang melalui beberapa pilihan layanan e-wallet, yaitu GoPay, DANA, ShopeePay, dan OVO. Setelah itu, pengguna memasukkan nomor tujuan, serta menentukan jumlah poin yang ingin ditukar. Program menggunakan (if) untuk memeriksa apakah saldo mencukupi dan jumlah poin yang dimasukkan valid. Sistem akan melakukan pengurangan saldo awal dengan point yang ditukar, lalu menampilkan bukti dan status transaksi.

5. **Laporan Transaksi**

Fitur ini menampilkan rangkuman aktivitas transaksi pengguna selama program berjalan. Informasi yang ditampilkan yaitu, ID pengguna, nama, total berat sampah yang disetorkan, total poin masuk, total poin yang ditukar, dan saldo poin saat ini.

6. **Keluar**
   
Perulangan (repeat until menu =  5) digunakan agar menu utama terus ditampilkan selama pengguna belum memilih menu keluar. Jika pengguna mengakhiri program melalui menu keluar maka program akan akan berhenti dan menampilkan pesan penutup setelah selesai menggunakan TRASHIFY
