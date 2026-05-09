# 📚 Praktikum Pemrograman Basis Data - Struktur Kontrol Perulangan

Repositori ini berisi implementasi struktur kontrol perulangan pada MySQL/MariaDB menggunakan Stored Procedure. Proyek ini mendemonstrasikan penggunaan `LOOP`, `WHILE`, dan logika `FOR-style` untuk menangani logika bisnis di tingkat basis data.

---

## 💻 Prasyarat Sistem
Untuk menjalankan kode ini, pastikan perangkat Anda telah terinstall:
* **XAMPP** (Versi PHP 8.2.12 / MariaDB 10.4.32).
* **Web Browser** (untuk akses phpMyAdmin).
* **VS Code** (sebagai editor teks).

---

## 📂 Struktur Database & Penjelasan Logika

### 1. Tabel Identitas (`mahasiswa`)
Digunakan untuk menyimpan data dasar mahasiswa agar database memiliki struktur yang valid saat diekspor.
* `nim`: Primary Key (Identitas Unik).
* `nama`: Nama Lengkap Mahasiswa.
* `jurusan`: Default 'Informatika'.
* `angkatan`: Tahun angkatan masuk.

### 2. Detail Stored Procedures
Berikut adalah penjelasan logika dari empat prosedur utama dalam file `db_praktik_loop.sql`:

* **`latihan_loop_10`**
  * **Jenis Loop**: `BASIC LOOP`.
  * **Logika**: Menampilkan urutan angka 1 sampai 10. Menggunakan label `loop_angka` dan perintah `LEAVE` untuk menghentikan perulangan saat variabel `v_counter` melewati angka 10.
  
* **`hitung_total_20`**
  * **Jenis Loop**: `WHILE LOOP`.
  * **Logika**: Menghitung akumulasi total angka dari 1 hingga 20. Setiap putaran, nilai counter ditambahkan ke variabel total selama kondisi `v_counter <= 20` terpenuhi.
  
* **`tampil_genap_20`**
  * **Jenis Loop**: `FOR-style` (menggunakan `WHILE`).
  * **Logika**: Menampilkan deret bilangan genap dari 2 sampai 20. Variabel dimulai dari 2 dan meloncat sebanyak 2 setiap putaran (`i = i + 2`).
  
* **`hitung_belanja`**
  * **Jenis Loop**: `WHILE LOOP`.
  * **Logika**: Simulasi penambahan saldo belanja tetap. Setiap perulangan menambah Rp50.000 hingga total belanja mencapai ambang batas Rp500.000.

---

## 🚀 Panduan Eksekusi
1. **Impor SQL**:
   Buka phpMyAdmin, buat database `db_praktik_loop`, lalu impor file `db_praktik_loop.sql`.
2. **Menjalankan Prosedur**:
   Eksekusi perintah berikut pada tab SQL:
   ```sql
   CALL latihan_loop_10();
   CALL hitung_total_20();
   CALL tampil_genap_20();
   CALL hitung_belanja();

---

## 👤 Identitas Pengembang
- Nama: JACK STIVEN
- NIM: IK2411062   
- Program Studi: Informatika
- Dosen Pengajar: ABDUL MALIK, S.Kom., M.Cs.