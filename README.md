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

# BAB II
# METODOLOGI PENELITIAN

## 2.1 Data Penelitian

Data yang digunakan dalam penelitian ini merupakan data primer yang diperoleh melalui penyebaran kuesioner kepada mahasiswa Program Studi Matematika Universitas Mataram. Kuesioner berisi 10 butir pernyataan mengenai tingkat kecemasan mahasiswa dalam menghadapi ujian dengan menggunakan skala Likert 1–5, yaitu:

- 1 = Sangat Tidak Setuju
- 2 = Tidak Setuju
- 3 = Netral
- 4 = Setuju
- 5 = Sangat Setuju

Jumlah populasi penelitian sebanyak **56 mahasiswa**, yang terdiri atas:

| Angkatan | Jumlah Mahasiswa |
|:---------:|----------------:|
| 2024A | 24 |
| 2025A | 32 |
| **Total** | **56** |

Jumlah sampel yang digunakan dalam penelitian ini adalah **30 responden**.

---

## 2.2 Teknik Pengambilan Sampel

Penelitian ini menggunakan metode **Two-Stage Cluster Sampling**, yaitu metode pengambilan sampel yang dilakukan melalui dua tahap.

### Tahap Pertama (First Stage)

Pada tahap pertama dilakukan pemilihan cluster. Cluster dalam penelitian ini adalah **angkatan mahasiswa**, yaitu:

- Angkatan 2024A
- Angkatan 2025A

Pemilihan cluster dilakukan secara acak menggunakan fungsi **RAND()** pada Microsoft Excel. Setiap cluster diberikan bilangan acak, kemudian diurutkan dari nilai terkecil hingga terbesar sehingga diperoleh cluster yang digunakan dalam penelitian.

### Tahap Kedua (Second Stage)

Setelah cluster ditetapkan, seluruh mahasiswa pada masing-masing cluster digabungkan sesuai kelompoknya.

Selanjutnya dilakukan pengacakan kembali terhadap anggota pada masing-masing cluster menggunakan fungsi **RAND()** di Microsoft Excel. Nilai acak kemudian diurutkan dari yang terkecil hingga terbesar, kemudian dipilih sejumlah responden sesuai alokasi proporsional.

Jumlah sampel tiap cluster dihitung menggunakan rumus:

\[
n_h=\frac{N_h}{N}\times n
\]

dengan:

- \(N_h\) = jumlah populasi pada cluster ke-h
- \(N\) = jumlah populasi keseluruhan
- \(n\) = jumlah sampel

Diketahui:

\[
N=56
\]

\[
n=30
\]

Untuk cluster 2024A:

\[
n_{2024}=\frac{24}{56}\times30=12,86\approx13
\]

Untuk cluster 2025A:

\[
n_{2025}=\frac{32}{56}\times30=17,14\approx17
\]

Sehingga diperoleh alokasi sampel sebagai berikut.

| Angkatan | Populasi | Sampel |
|:---------:|---------:|--------:|
|2024A|24|13|
|2025A|32|17|
|**Total**|**56**|**30**|

---

## 2.3 Uji Validitas

Uji validitas dilakukan menggunakan **Corrected Item-Total Correlation** untuk mengetahui kemampuan setiap butir pertanyaan dalam mengukur variabel penelitian.

Kriteria yang digunakan adalah:

- Corrected Item-Total Correlation > 0,30 → Valid
- Corrected Item-Total Correlation ≤ 0,30 → Tidak Valid

---

## 2.4 Uji Reliabilitas

Reliabilitas instrumen diukur menggunakan koefisien **Cronbach's Alpha**.

Kriteria yang digunakan adalah:

- Cronbach's Alpha ≥ 0,70 → Reliabel
- Cronbach's Alpha < 0,70 → Tidak Reliabel

---

## 2.5 Pembobotan

Karena penelitian menggunakan metode **Two-Stage Cluster Sampling**, maka setiap responden diberikan bobot sesuai peluang terpilihnya.

Bobot dihitung menggunakan rumus:

\[
w_h=\frac{N_h}{n_h}
\]

dengan:

- \(w_h\) = bobot pada cluster ke-h
- \(N_h\) = jumlah populasi cluster ke-h
- \(n_h\) = jumlah sampel cluster ke-h

Perhitungan bobot:

Untuk angkatan 2024A

\[
w_{2024}=\frac{24}{13}=1,846
\]

Untuk angkatan 2025A

\[
w_{2025}=\frac{32}{17}=1,882
\]

Bobot tersebut digunakan dalam proses estimasi menggunakan package **survey** pada perangkat lunak R.

---

## 2.6 Estimasi Two-Stage Cluster Sampling

Estimasi rata-rata skor kecemasan dilakukan menggunakan fungsi **svymean()** pada package **survey**.

Parameter yang dihitung meliputi:

- Mean (Rata-rata)
- Standard Error (SE)
- Confidence Interval (CI)
- Relative Standard Error (RSE)
- Design Effect (Deff)

---

## 2.7 Perangkat Lunak

Analisis data dilakukan menggunakan perangkat lunak **RStudio** dengan package:

- readxl
- psych
- survey

Sedangkan proses pengacakan responden dilakukan menggunakan **Microsoft Excel** melalui fungsi **RAND()**.

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

\[
\alpha = 0,874
\]

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
