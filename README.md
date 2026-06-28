# Two-Stage-Cluster-Sampling
# Estimasi Tingkat Kecemasan Menghadapi Ujian Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Two-Stage Cluster Sampling

---

# BAB I
# PENDAHULUAN

## 1.1 Latar Belakang

Sampling merupakan salah satu tahapan penting dalam penelitian karena tidak semua anggota populasi dapat diamati secara langsung. Pengambilan sampel yang tepat akan menghasilkan estimasi parameter populasi yang lebih akurat dan efisien. Salah satu metode sampling yang banyak digunakan adalah **Two-Stage Cluster Sampling**, yaitu metode pengambilan sampel yang dilakukan melalui dua tahap. Tahap pertama adalah pemilihan cluster dari populasi, sedangkan tahap kedua adalah pemilihan anggota sampel dari cluster yang telah terpilih.

Pada penelitian ini, cluster yang digunakan adalah angkatan mahasiswa. Selanjutnya dilakukan pemilihan responden pada masing-masing cluster secara acak sederhana. Pendekatan ini dipilih karena lebih praktis ketika populasi telah terbagi ke dalam kelompok-kelompok yang jelas.

Data penelitian diperoleh melalui penyebaran kuesioner mengenai tingkat kecemasan mahasiswa dalam menghadapi ujian. Sebelum digunakan untuk proses estimasi, instrumen penelitian terlebih dahulu diuji validitas dan reliabilitas untuk memastikan bahwa setiap butir pertanyaan mampu mengukur variabel yang diteliti secara tepat dan konsisten.

Setelah instrumen dinyatakan valid dan reliabel, dilakukan proses pembobotan sesuai peluang pemilihan sampel pada masing-masing cluster. Selanjutnya dilakukan estimasi rata-rata skor kecemasan menggunakan metode **Two-Stage Cluster Sampling**.

---

## 1.2 Rumusan Masalah

1. Apakah instrumen penelitian yang digunakan telah valid dan reliabel?
2. Bagaimana proses estimasi rata-rata tingkat kecemasan mahasiswa menggunakan metode Two-Stage Cluster Sampling?
3. Bagaimana hasil estimasi rata-rata tingkat kecemasan mahasiswa berdasarkan metode Two-Stage Cluster Sampling?

---

## 1.3 Tujuan

1. Menguji validitas dan reliabilitas instrumen penelitian.
2. Mengestimasi rata-rata tingkat kecemasan mahasiswa menggunakan metode Two-Stage Cluster Sampling.
3. Menginterpretasikan hasil estimasi yang diperoleh.

---

## 1.4 Manfaat

Penelitian ini diharapkan dapat memberikan pemahaman mengenai penerapan metode Two-Stage Cluster Sampling dalam melakukan estimasi parameter populasi menggunakan data survei.

---

# BAB II. METODOLOGI PENELITIAN

## 2.1 Data Penelitian

Penelitian ini menggunakan data primer yang diperoleh melalui penyebaran kuesioner mengenai tingkat kecemasan mahasiswa dalam menghadapi ujian. Instrumen penelitian terdiri atas 10 butir pertanyaan menggunakan skala Likert 1–5, dengan keterangan sebagai berikut:

- 1 = Sangat Tidak Setuju
- 2 = Tidak Setuju
- 3 = Netral
- 4 = Setuju
- 5 = Sangat Setuju

Populasi penelitian adalah seluruh mahasiswa Statistika yang berada pada dua kelas, yaitu:

| Cluster | Jumlah Mahasiswa |
|---------|-----------------:|
| 2024A | 24 |
| 2025A | 32 |
| **Total** | **56** |

---

## 2.2 Penentuan Jumlah Sampel

Jumlah sampel ditentukan menggunakan rumus Slovin.

**Rumus Slovin**

```
            N
n = ----------------
    1 + N(e × e)
```

Keterangan:

- n = ukuran sampel
- N = jumlah populasi
- e = margin of error

Pada penelitian ini diketahui:

- N = 56 mahasiswa
- e = 12,5% = 0,125

Sehingga diperoleh:

```
             56
n = ----------------------
    1 + 56(0,125 × 0,125)

  = 56 / 1,875

  = 29,87 ≈ 30 responden
```

Dengan demikian jumlah sampel yang digunakan dalam penelitian ini adalah **30 responden**.

---

## 2.3 Teknik Pengambilan Sampel

Penelitian ini menggunakan metode **Two-Stage Cluster Sampling**, yaitu teknik pengambilan sampel yang dilakukan melalui dua tahap.

### Tahap I (Pemilihan Cluster)

Populasi dikelompokkan berdasarkan kelas, yaitu:

- 2024A
- 2025A

Pemilihan cluster dilakukan menggunakan Microsoft Excel dengan fungsi **RAND()**. Nilai acak diurutkan dari yang terkecil hingga terbesar, kemudian dua cluster teratas dipilih sebagai cluster penelitian.

Cluster yang terpilih adalah:

- 2024A
- 2025A

---

### Tahap II (Pemilihan Responden)

Jumlah sampel pada masing-masing cluster ditentukan secara proporsional menggunakan rumus:

```
        Nh
nh = -------- × n
         N
```

Keterangan:

- nh = jumlah sampel pada cluster ke-h
- Nh = jumlah populasi pada cluster ke-h
- N = jumlah populasi
- n = jumlah sampel

Perhitungan untuk masing-masing cluster adalah sebagai berikut.

#### Cluster 2024A

```
      24
nh = ---- × 30
      56

   = 12,86 ≈ 13 responden
```

#### Cluster 2025A

```
      32
nh = ---- × 30
      56

   = 17,14 ≈ 17 responden
```

Selanjutnya, anggota pada masing-masing cluster kembali diacak menggunakan fungsi **RAND()** di Microsoft Excel. Nilai acak kemudian diurutkan dari yang terkecil hingga terbesar, sehingga diperoleh:

- 13 responden dari kelas 2024A.
- 17 responden dari kelas 2025A.

Dengan demikian total sampel penelitian berjumlah **30 responden**.

---

## 2.4 Langkah Analisis Data

Analisis data dilakukan menggunakan perangkat lunak **R** dengan tahapan sebagai berikut.

1. Mengimpor data hasil kuesioner.
2. Melakukan uji validitas instrumen menggunakan Corrected Item-Total Correlation.
3. Melakukan uji reliabilitas menggunakan Cronbach's Alpha.
4. Menghitung skor total setiap responden.
5. Menghitung bobot sampel pada setiap cluster.
6. Menentukan desain survei menggunakan fungsi `svydesign()`.
7. Mengestimasi rata-rata skor kecemasan menggunakan fungsi `svymean()`.
8. Menghitung Standard Error (SE).
9. Menghitung Confidence Interval (CI) 95%.
10. Menghitung Relative Standard Error (RSE).
11. Menghitung Design Effect (Deff).
12. Menyajikan hasil estimasi dalam bentuk tabel dan grafik.

---

## 2.5 Rumus Estimasi Two-Stage Cluster Sampling

### 1. Estimasi Rata-rata

```
           Σ(wi × yi)
ȳ = --------------------------
          Σwi
```

Keterangan:

- yi = skor responden ke-i
- wi = bobot responden

---

### 2. Standard Error (SE)

```
SE = √Var(ȳ)
```

---

### 3. Confidence Interval (95%)

```
CI = ȳ ± 1,96 × SE
```

---

### 4. Relative Standard Error (RSE)

```
          SE
RSE = -------- × 100%
         ȳ
```

---

### 5. Design Effect (Deff)

```
             Var(Cluster)
Deff = ----------------------------
          Var(Simple Random)
```

Nilai Deff digunakan untuk menggambarkan efisiensi desain sampling yang digunakan dibandingkan dengan Simple Random Sampling.
---

# BAB III
# HASIL DAN PEMBAHASAN

## 3.1 Deskripsi Data

Penelitian ini menggunakan data primer yang diperoleh melalui penyebaran kuesioner kepada mahasiswa Program Studi Matematika Universitas Mataram. Jumlah responden yang digunakan sebanyak **30 mahasiswa** yang berasal dari dua cluster, yaitu angkatan **2024A** dan **2025A**.

Instrumen penelitian terdiri atas **10 butir pernyataan** mengenai tingkat kecemasan mahasiswa dalam menghadapi ujian menggunakan skala Likert 1–5.

Berdasarkan hasil pengolahan data menggunakan RStudio diperoleh ringkasan statistik sebagai berikut.

| Statistik | Nilai |
|-----------|-------:|
| Jumlah Responden | 30 |
| Jumlah Item | 10 |
| Skor Minimum | 20 |
| Skor Maksimum | 47 |
| Rata-rata Skor | 33,967 |
| Simpangan Baku | 7,545 |

Rata-rata skor kecemasan mahasiswa sebesar **33,967** dengan simpangan baku sebesar **7,545**, yang menunjukkan adanya variasi tingkat kecemasan di antara responden.

---

## 3.2 Uji Validitas

Uji validitas dilakukan menggunakan **Corrected Item-Total Correlation**. Suatu item dinyatakan valid apabila memiliki nilai Corrected Item-Total Correlation lebih besar dari **0,30**.

Hasil uji validitas disajikan pada tabel berikut.

| Item | Corrected Item-Total Correlation | Keterangan |
|:----:|---------------------------------:|:----------:|
| P1 | 0,797 | Valid |
| P2 | 0,787 | Valid |
| P3 | 0,430 | Valid |
| P4 | 0,658 | Valid |
| P5 | 0,303 | Valid |
| P6 | 0,668 | Valid |
| P7 | 0,584 | Valid |
| P8 | 0,725 | Valid |
| P9 | 0,556 | Valid |
| P10 | 0,410 | Valid |

Berdasarkan hasil tersebut, seluruh item memiliki nilai **Corrected Item-Total Correlation > 0,30**, sehingga seluruh butir pernyataan dinyatakan **valid** dan layak digunakan dalam penelitian.

---

## 3.3 Uji Reliabilitas

Reliabilitas instrumen diukur menggunakan koefisien **Cronbach's Alpha**.

Hasil analisis menunjukkan nilai:
```
\[
\alpha = 0,874
\]
```
Karena nilai Cronbach's Alpha lebih besar dari **0,70**, maka instrumen penelitian dinyatakan **reliabel**. Hal ini menunjukkan bahwa seluruh butir pernyataan memiliki tingkat konsistensi internal yang baik dalam mengukur tingkat kecemasan mahasiswa.

---

## 3.4 Distribusi Skor Total

Skor total responden diperoleh dari penjumlahan seluruh skor pada 10 butir pertanyaan.

Histogram skor total ditunjukkan pada Gambar 3.1.

> **<img width="322" height="320" alt="{836554F1-01A0-4914-B988-4F94E4AB01B7}" src="https://github.com/user-attachments/assets/f9ade80c-60a5-4e8f-837f-2d9ff0b0d287" />
**

**Gambar 3.1 Histogram Skor Total Tingkat Kecemasan Mahasiswa**

Berdasarkan histogram terlihat bahwa skor total responden tersebar pada rentang **20 hingga 47**. Sebagian besar responden memiliki skor pada rentang nilai tengah hingga tinggi, sehingga menunjukkan bahwa tingkat kecemasan mahasiswa relatif bervariasi.

---

## 3.5 Pembobotan (Weighting)

Karena penelitian menggunakan metode **Two-Stage Cluster Sampling**, maka setiap responden diberikan bobot berdasarkan peluang terpilihnya pada masing-masing cluster.

Bobot dihitung menggunakan rumus
```
\[
w_h=\frac{N_h}{n_h}
\]

dengan:

- \(N_h\) = jumlah populasi pada cluster ke-h
- \(n_h\) = jumlah sampel pada cluster ke-h

Perhitungan bobot menghasilkan:

Untuk angkatan 2024A

\[
w=\frac{24}{13}=1,846
\]

Untuk angkatan 2025A

\[
w=\frac{32}{17}=1,882
\]
```
Bobot tersebut digunakan dalam proses estimasi menggunakan package **survey** di RStudio sehingga setiap responden memberikan kontribusi sesuai dengan peluang pemilihannya.

---

## 3.6 Estimasi Rata-rata Menggunakan Two-Stage Cluster Sampling

Estimasi rata-rata skor kecemasan dilakukan menggunakan fungsi **svymean()** pada package **survey** dengan mempertimbangkan bobot sampel.

Hasil estimasi ditunjukkan pada tabel berikut.

| Parameter | Nilai |
|-----------|-------:|
| Mean | 33,993 |
| Standard Error | 2,696 |
| Relative Standard Error (RSE) | 7,931 % |
| Design Effect (Deff) | 8,283 |

Hasil estimasi menunjukkan bahwa rata-rata skor kecemasan mahasiswa adalah sebesar **33,993**.

Nilai **Standard Error** sebesar **2,696** menunjukkan besarnya kesalahan baku dari estimasi rata-rata yang diperoleh.

Nilai **Relative Standard Error (RSE)** sebesar **7,931%** menunjukkan bahwa hasil estimasi memiliki tingkat ketelitian yang baik karena masih berada di bawah batas 25%.

Nilai **Design Effect (Deff)** sebesar **8,283** menunjukkan bahwa penggunaan desain Two-Stage Cluster Sampling menghasilkan ragam estimasi yang lebih besar dibandingkan dengan Simple Random Sampling. Hal tersebut dapat terjadi karena responden yang berada dalam satu cluster cenderung memiliki karakteristik yang relatif serupa sehingga meningkatkan ragam estimasi.

---

## 3.7 Interval Kepercayaan

Interval kepercayaan 95% yang diperoleh dari hasil estimasi adalah

\[
28,709 \leq \mu \leq 39,277
\]

Artinya, dengan tingkat kepercayaan sebesar **95%**, rata-rata skor kecemasan mahasiswa diperkirakan berada pada interval **28,709 hingga 39,277**.

---

## 3.8 Pembahasan

Berdasarkan hasil analisis, seluruh item pada kuesioner dinyatakan valid karena memiliki nilai Corrected Item-Total Correlation lebih besar dari 0,30. Selain itu, nilai Cronbach's Alpha sebesar 0,874 menunjukkan bahwa instrumen memiliki tingkat reliabilitas yang tinggi sehingga layak digunakan dalam penelitian.

Penggunaan metode Two-Stage Cluster Sampling memungkinkan proses pengambilan sampel dilakukan secara lebih terstruktur melalui dua tahap, yaitu pemilihan cluster dan pemilihan anggota sampel pada masing-masing cluster. Setelah dilakukan pembobotan berdasarkan peluang pemilihan sampel, diperoleh estimasi rata-rata skor kecemasan mahasiswa sebesar **33,993**.

Nilai Relative Standard Error (RSE) sebesar **7,931%** menunjukkan bahwa hasil estimasi memiliki tingkat ketelitian yang baik. Selain itu, interval kepercayaan yang diperoleh memberikan gambaran rentang nilai rata-rata populasi yang mungkin, yaitu antara **28,709 hingga 39,277**.

Secara keseluruhan, metode Two-Stage Cluster Sampling berhasil digunakan untuk mengestimasi rata-rata tingkat kecemasan mahasiswa berdasarkan data survei yang telah dikumpulkan.

---

# BAB IV PENUTUP

## 4.1 Kesimpulan

Berdasarkan hasil penelitian yang telah dilakukan, diperoleh kesimpulan sebagai berikut.

1. Hasil uji validitas menunjukkan bahwa seluruh item pertanyaan (P1–P10) memiliki nilai **Corrected Item-Total Correlation** lebih besar dari 0,30 sehingga seluruh item dinyatakan **valid**. Selain itu, hasil uji reliabilitas memperoleh nilai **Cronbach's Alpha sebesar 0,874**, yang menunjukkan bahwa instrumen penelitian **reliabel** dan layak digunakan sebagai alat pengumpulan data.

2. Hasil estimasi menggunakan metode **Two-Stage Cluster Sampling** menunjukkan bahwa rata-rata skor tingkat kecemasan mahasiswa Program Studi Matematika Universitas Mataram sebesar **33,993**. Estimasi tersebut diperoleh dengan menggunakan pembobotan berdasarkan peluang pemilihan sampel pada masing-masing cluster.

3. Hasil estimasi memiliki **Standard Error (SE) sebesar 2,696**, **Relative Standard Error (RSE) sebesar 7,931%**, **interval kepercayaan 95% sebesar (28,709; 39,277)**, serta **Design Effect (Deff) sebesar 8,283**. Nilai RSE yang berada di bawah 25% menunjukkan bahwa hasil estimasi memiliki tingkat ketelitian yang baik, sehingga estimasi rata-rata tingkat kecemasan mahasiswa dapat digunakan sebagai gambaran kondisi populasi penelitian.

---

## 4.2 Saran

1. Penelitian selanjutnya disarankan menggunakan jumlah cluster yang lebih banyak agar estimasi yang diperoleh semakin representatif terhadap populasi.

2. Jumlah responden dapat diperbanyak sehingga hasil estimasi menjadi lebih stabil dan memiliki tingkat ketelitian yang lebih tinggi.

3. Instrumen penelitian dapat dikembangkan dengan menambahkan indikator lain yang berkaitan dengan tingkat kecemasan mahasiswa agar informasi yang diperoleh menjadi lebih komprehensif.

4. Penelitian selanjutnya dapat menerapkan metode sampling lain yang sesuai dengan karakteristik populasi sehingga hasil estimasi dapat dibandingkan dengan metode Two-Stage Cluster Sampling.
