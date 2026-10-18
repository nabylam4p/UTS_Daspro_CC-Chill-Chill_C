program Trashify;
uses crt;

var
    menu, jenis, ewallet, i : integer;
    berat, totalBerat: real;
    saldo, poin, ditukar, totalMasuk, totalKeluar: integer;
    id, nama, hp: string;

begin
    clrscr;
    saldo := 0;
    totalBerat := 0;
    totalMasuk := 0;
    totalKeluar := 0;

    writeln('TRASHIFY - SMART TRASH BANK & POINT EXCHANGE');
    writeln;
    write('Masukkan ID Pengguna : '); 
    readln(id);
    write('Masukkan Nama        : '); 
    readln(nama);

repeat
    clrscr;
    writeln('TRASHIFY');
    writeln('---------------------------------------------------');
    writeln('1. Setor Sampah');
    writeln('2. Cek Saldo Poin');
    writeln('3. Tukar Poin ke E-Wallet');
    writeln('4. Laporan Transaksi');
    writeln('5. Keluar');
    writeln('---------------------------------------------------');
    write('Pilih Menu (1-5): ');
    readln(menu);

    case menu of
        1: // 1. SETOR SAMPAH
            begin
                clrscr;
                writeln('--- SETOR SAMPAH ---');
                for i := 1 to 5 do
                begin
                    case i of
                    1: writeln('1. Plastik (10 poin/kg)');
                    2: writeln('2. Kertas  (5 poin/kg)');
                    3: writeln('3. Kardus  (8 poin/kg)');
                    4: writeln('4. Logam   (15 poin/kg)');
                    5: writeln('5. Kaca    (6 poin/kg)');
                    end;
                end;
                
                writeln('0. Batal');
                write('Pilihan (1-0) : '); 
                readln(jenis);

            if jenis = 0 then 
                continue;

            if (jenis < 1) or (jenis > 5) then
                begin
                writeln('Pilihan tidak valid!');
                readln;
                continue;
            end;

            write('Berat Sampah (kg): '); 
            readln(berat);

            while berat <= 0 do
            begin
                writeln('Berat harus lebih dari 0 kg!');
                write('Masukkan Ulang Berat Sampah (kg): ');
                readln;
                continue;
            end;

            // Hitung Poin
            case jenis of
                1: poin := round(berat * 10);
                2: poin := round(berat * 5);
                3: poin := round(berat * 8);
                4: poin := round(berat * 15);
                5: poin := round(berat * 6);
            end;

            saldo := saldo + poin;
            totalBerat := totalBerat + berat;
            totalMasuk := totalMasuk + poin;

            writeln;
            writeln('--- HASIL SETORAN ---');
            writeln('Poin Diperoleh : +', poin, ' poin');
            writeln('Nilai Setoran  : Rp', poin * 100);
            writeln('Status         : Berhasil');
            writeln('Tekan Enter untuk kembali...');
            readln;
            end;

        2: // 2. CEK SALDO POIN
            begin
                clrscr;
                writeln('--- CEK SALDO ---');
                writeln('ID Pengguna : ', id);
                writeln('Nama        : ', nama);
                writeln('Saldo Poin  : ', saldo, ' poin');
                writeln('Nilai Uang  : Rp', saldo * 100);
                writeln('Tekan Enter untuk kembali...');
                readln;
            end;

        3: // 3. TUKAR POIN KE E-WALLET
        begin
            clrscr;
            writeln('--- TUKAR POIN ---');
            writeln('Saldo Poin Anda : ', saldo, ' poin');

            if saldo <= 0 then
            begin
                writeln('Maaf, saldo poin Anda masih kosong!');
                writeln('Tekan Enter untuk kembali...');
                readln;
                continue;
            end;

            writeln('Pilih E-Wallet:');
            writeln('1. GoPay');
            writeln('2. DANA');
            writeln('3. ShopeePay');
            writeln('4. OVO');
            write('Pilihan (1-4) : '); 
            readln(ewallet);

            if (ewallet < 1) or (ewallet > 4) then
            begin
                writeln('Pilihan tidak valid!');
                readln;
                continue;
            end;

            write('Nomor HP Tujuan     : '); 
            readln(hp);
            write('Jumlah Poin Ditukar : '); 
            readln(ditukar);
    
            if (ditukar <= 0) or (ditukar > saldo) then
            begin
                writeln('Transaksi Gagal: Poin tidak valid atau melebihi saldo!');
            end
            else
            begin
                saldo := saldo - ditukar;
                totalKeluar := totalKeluar + ditukar;

                writeln;
                writeln('--- BUKTI PENUKARAN ---');
                writeln('Poin Ditukar  : ', ditukar, ' poin');
                writeln('Nominal Uang  : Rp', ditukar * 100);
                writeln('Sisa Saldo    : ', saldo, ' poin');
                writeln('Status        : Berhasil');
            end;

          writeln('Tekan Enter untuk kembali...');
          readln;
        end;

        4: // 4. LAPORAN TRANSAKSI
        begin
            clrscr;
            writeln('======= LAPORAN TRANSAKSI =======');
            writeln('ID Pengguna         : ', id);
            writeln('Nama Pengguna       : ', nama);
            writeln('---------------------------------------------------');
            writeln('Total Berat Disetor : ', totalBerat:0:1, ' kg');
            writeln('Total Poin Masuk    : ', totalMasuk, ' poin');
            writeln('Total Poin Ditukar  : ', totalKeluar, ' poin');
            writeln('Saldo Poin Saat Ini : ', saldo, ' poin');
            writeln('---------------------------------------------------');
            writeln('Tekan Enter untuk kembali...');
            readln;
        end;

        5: // 5. KELUAR
        begin
            clrscr;
            writeln('Terima kasih telah menggunakan TRASHIFY!');
            writeln('Sampah dikelola, manfaat tercipta.');
            readln;
        end;
    end;

until menu = 5;
end.