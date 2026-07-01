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

# BAB II METODOLOGI PENELITIAN

## Metode

Penelitian ini merupakan penelitian kuantitatif dengan pendekatan survei menggunakan kuesioner skala Likert. Penelitian bertujuan untuk mengestimasi rata-rata tingkat kecemasan mahasiswa Program Studi Statistika FMIPA Universitas Mataram menggunakan metode **Two-Stage Cluster Sampling**.

Populasi penelitian terdiri dari mahasiswa Program Studi Statistika FMIPA Universitas Mataram kelas A dengan rincian sebagai berikut.

| Angkatan | Jumlah Mahasiswa |
|:---------|-----------------:|
| 2024 A | 24 |
| 2025 A | 32 |
| **Total** | **56** |

Pengolahan data dilakukan menggunakan bahasa pemrograman **R** dengan bantuan package `readxl`, `psych`, dan `survey`.

---

## Teknik Pengambilan Sampel

Penelitian ini menggunakan metode **Two-Stage Cluster Sampling**, yaitu teknik sampling yang dilakukan melalui dua tahap.

### Tahap 1. Pemilihan Cluster

Pada tahap pertama dilakukan pemilihan cluster menggunakan Microsoft Excel.

Setiap kelas diberikan nilai acak menggunakan fungsi **RAND()**, kemudian diurutkan dari nilai terkecil hingga terbesar. Berdasarkan hasil randomisasi tersebut diperoleh dua cluster yang dijadikan sampel penelitian, yaitu:

- 2024 A
- 2025 A

---

### Tahap 2. Pemilihan Responden

Setelah cluster terpilih, seluruh mahasiswa pada masing-masing cluster kembali diberikan nilai acak menggunakan fungsi **RAND()**. Selanjutnya data diurutkan dari nilai acak terkecil hingga terbesar.

Jumlah responden yang diambil dari setiap cluster dilakukan secara proporsional terhadap jumlah mahasiswa pada masing-masing cluster.

| Cluster | Populasi | Sampel |
|:--------|---------:|--------:|
| 2024 A | 24 | 13 |
| 2025 A | 32 | 17 |
| **Total** | **56** | **30** |

Dengan demikian jumlah responden penelitian sebanyak **30 mahasiswa**.

---

## Penentuan Jumlah Sampel

Jumlah sampel minimum dihitung menggunakan rumus Slovin.

```
n = N / (1 + N × e²)
```

Keterangan:

- `n` = jumlah sampel
- `N` = jumlah populasi
- `e` = margin of error

Pada penelitian ini digunakan:

- Populasi (`N`) = **56 mahasiswa**
- Margin of error (`e`) = **15%**

Perhitungan:

```
n = 56 / (1 + 56 × 0,15²)

n = 56 / (1 + 1,26)

n = 56 / 2,26

n = 24,78 ≈ 25 responden
```

Agar jumlah responden lebih representatif dan memenuhi kebutuhan analisis statistik, jumlah sampel ditingkatkan menjadi **30 responden**.

---

# Tahapan Analisis Data

## 1. Import Data

Data hasil kuesioner yang telah disimpan dalam format Microsoft Excel diimpor ke dalam R menggunakan package **readxl**.

```r
library(readxl)

data <- read_excel("Formulir tanpa judul (Jawaban) (8).xlsx")
```

Keterangan:

- `library(readxl)` digunakan untuk memanggil package **readxl**.
- `read_excel()` digunakan untuk membaca data Excel ke dalam R.

---

## 2. Melihat Struktur Data

Tahap ini bertujuan memastikan seluruh data berhasil dibaca dengan benar.

```r
str(data)

summary(data)
```

Keterangan:

- `str()` digunakan untuk melihat struktur data.
- `summary()` digunakan untuk menampilkan ringkasan statistik setiap variabel.

---

## 3. Uji Validitas dan Reliabilitas

Instrumen penelitian diuji menggunakan metode **Cronbach Alpha** pada package **psych**.

```r
library(psych)

item <- data[, paste0("P",1:10)]

hasil <- alpha(item)

validitas <- data.frame(
  Item = rownames(hasil$item.stats),
  Corrected_Item_Total = round(hasil$item.stats$r.drop,3)
)

validitas$Keterangan <- ifelse(
  validitas$Corrected_Item_Total > 0.30,
  "Valid",
  "Tidak Valid"
)

validitas
```

Keterangan:

- `alpha()` digunakan untuk menghitung validitas dan reliabilitas.
- `r.drop` merupakan Corrected Item Total Correlation.
- Item dinyatakan valid apabila `r.drop > 0,30`.

Selanjutnya dilakukan uji reliabilitas.

```r
alpha <- hasil$total$raw_alpha

cat("Cronbach Alpha =", round(alpha,3))

if(alpha >= 0.70){
  cat("Instrumen Reliabel")
}else{
  cat("Instrumen Tidak Reliabel")
}
```

Keterangan:

- Instrumen dinyatakan reliabel apabila nilai **Cronbach Alpha ≥ 0,70**.

---

## 4. Menghitung Skor Total

Skor total setiap responden dihitung dengan menjumlahkan seluruh skor jawaban.

```r
data$Skor_Total <- rowSums(item)

summary(data$Skor_Total)

mean(data$Skor_Total)

sd(data$Skor_Total)
```

Keterangan:

- `rowSums()` digunakan untuk menghitung total skor masing-masing responden.
- `mean()` menghitung rata-rata skor.
- `sd()` menghitung simpangan baku skor.

---

## 5. Histogram Skor Total

Histogram digunakan untuk melihat distribusi skor tingkat kecemasan mahasiswa.

```r
hist(
  data$Skor_Total,
  main="Histogram Tingkat Kecemasan",
  xlab="Skor Total",
  ylab="Frekuensi",
  col="lightblue",
  border="black"
)
```

---

## 6. Menghitung Bobot Sampel

Karena menggunakan metode **Two-Stage Cluster Sampling**, setiap responden diberikan bobot sesuai proporsi populasi pada cluster masing-masing.

```r
N2024 <- 24
N2025 <- 32

n2024 <- 13
n2025 <- 17

data$Bobot <- ifelse(
  data$Angkatan == 2024,
  N2024/n2024,
  N2025/n2025
)
```

Keterangan:

Bobot dihitung menggunakan rumus:

```
Bobot = Jumlah Populasi Cluster / Jumlah Sampel Cluster
```

Sehingga diperoleh:

- Bobot responden angkatan 2024 = **24/13 = 1,846**
- Bobot responden angkatan 2025 = **32/17 = 1,882**

Bobot tersebut digunakan pada proses estimasi menggunakan **Two-Stage Cluster Sampling**.

---

# BAB III HASIL DAN PEMBAHASAN

## 3.1 Deskripsi Data

Penelitian ini menggunakan data hasil penyebaran kuesioner kepada **30 mahasiswa** Program Studi Statistika FMIPA Universitas Mataram.

Pengambilan sampel dilakukan menggunakan metode **Two-Stage Cluster Sampling**. Pada tahap pertama dipilih dua cluster, yaitu kelas **2024 A** dan **2025 A**. Selanjutnya, pada tahap kedua dipilih responden secara acak dari masing-masing cluster sehingga diperoleh **13 responden dari kelas 2024 A** dan **17 responden dari kelas 2025 A**.

Instrumen penelitian terdiri atas **10 butir pertanyaan (P1–P10)** yang digunakan untuk mengukur tingkat kecemasan mahasiswa dalam menghadapi ujian menggunakan skala Likert 1–5.

| Cluster | Populasi | Sampel |
|:---------|---------:|--------:|
| 2024 A | 24 | 13 |
| 2025 A | 32 | 17 |
| **Total** | **56** | **30** |

---

## 3.2 Hasil Uji Validitas

Uji validitas dilakukan menggunakan **Corrected Item-Total Correlation (r.drop)**. Suatu item dinyatakan valid apabila memiliki nilai **r.drop > 0,30**.

### Hasil Uji Validitas

| Item | Corrected Item-Total Correlation | Keterangan |
|:----:|---------------------------------:|:----------:|
| P1 | 0.797 | Valid |
| P2 | 0.787 | Valid |
| P3 | 0.430 | Valid |
| P4 | 0.658 | Valid |
| P5 | 0.303 | Valid |
| P6 | 0.668 | Valid |
| P7 | 0.584 | Valid |
| P8 | 0.725 | Valid |
| P9 | 0.556 | Valid |
| P10 | 0.410 | Valid |

### Pembahasan

Berdasarkan hasil pengujian, seluruh item memiliki nilai **Corrected Item-Total Correlation lebih besar dari 0,30**. Dengan demikian seluruh butir pertanyaan dinyatakan **valid**, sehingga mampu mengukur tingkat kecemasan mahasiswa sesuai tujuan penelitian dan layak digunakan dalam proses analisis.

---

## 3.3 Hasil Uji Reliabilitas

Uji reliabilitas dilakukan menggunakan metode **Cronbach's Alpha**.

### Hasil Uji Reliabilitas

| Statistik | Nilai |
|-----------|------:|
| Cronbach's Alpha | **0.874** |

### Pembahasan

Nilai **Cronbach's Alpha sebesar 0,874** lebih besar daripada batas minimum **0,70**, sehingga instrumen penelitian dinyatakan **reliabel**. Hal ini menunjukkan bahwa seluruh item memiliki konsistensi internal yang baik sehingga dapat digunakan untuk mengukur tingkat kecemasan mahasiswa.

---

## 3.4 Analisis Deskriptif Skor Total

Skor total diperoleh dengan menjumlahkan skor seluruh item pertanyaan pada setiap responden.

### Ringkasan Statistik

| Statistik | Nilai |
|-----------|------:|
| Minimum | 20 |
| Kuartil 1 | 29,25 |
| Median | 35 |
| Mean | 33,97 |
| Kuartil 3 | 38,75 |
| Maksimum | 47 |
| Simpangan Baku | 7,55 |

### Pembahasan

### Pembahasan

Rata-rata skor total responden sebesar **33,97** dengan simpangan baku sebesar **7,55**. Nilai minimum yang diperoleh adalah **20**, sedangkan nilai maksimum mencapai **47**. Hal ini menunjukkan bahwa skor tingkat kecemasan mahasiswa cukup bervariasi, sehingga terdapat responden dengan skor yang relatif rendah maupun relatif tinggi.

---

## 3.5 Histogram Skor Tingkat Kecemasan

Histogram berikut menunjukkan distribusi skor total tingkat kecemasan mahasiswa.

> **<img width="317" height="308" alt="{EC662911-5856-40D4-A206-C4A8C813A4E6}" src="https://github.com/user-attachments/assets/0351c930-b43c-460e-8787-789f33fbf4c7" />
**

### Pembahasan

### Pembahasan

Histogram menunjukkan bahwa sebagian besar responden memiliki skor total pada rentang sekitar **30 hingga 40**. Hal ini menunjukkan bahwa distribusi skor tingkat kecemasan mahasiswa cenderung terkonsentrasi pada rentang tersebut, meskipun masih terdapat beberapa responden dengan skor yang lebih rendah maupun lebih tinggi.

---

## 3.6 Pembobotan (Weighting)

Karena penelitian menggunakan metode **Two-Stage Cluster Sampling**, setiap responden diberikan bobot sesuai dengan ukuran populasi pada cluster asalnya.

Perhitungan bobot dilakukan sebagai berikut.

### Cluster 2024 A

```
Bobot = 24 / 13 = 1.846
```

### Cluster 2025 A

```
Bobot = 32 / 17 = 1.882
```

### Pembahasan

Bobot diberikan agar setiap responden dapat mewakili jumlah anggota populasi pada cluster asalnya. Dengan demikian, hasil estimasi yang diperoleh menjadi lebih representatif terhadap populasi penelitian.

---

## 3.7 Hasil Estimasi Two-Stage Cluster Sampling

Estimasi rata-rata tingkat kecemasan dilakukan menggunakan package **survey** di R dengan memperhatikan bobot setiap responden.

### Hasil Estimasi

| Statistik | Nilai |
|-----------|------:|
| Mean | **33.993** |
| Standard Error (SE) | **2.696** |
| Relative Standard Error (RSE) | **7.93 %** |
| Design Effect (DEFF) | **8.283** |

### Interval Kepercayaan 95%

| Batas Bawah | Batas Atas |
|------------:|-----------:|
| 28.709 | 39.277 |

### Pembahasan

### Pembahasan

Berdasarkan hasil estimasi menggunakan metode **Two-Stage Cluster Sampling**, diperoleh rata-rata skor tingkat kecemasan mahasiswa sebesar **33,993**. Nilai tersebut merupakan estimasi rata-rata skor tingkat kecemasan mahasiswa pada populasi yang diteliti. Nilai **Standard Error (SE)** sebesar **2,696** menunjukkan besarnya galat baku dari estimasi rata-rata yang diperoleh. Nilai ini menggambarkan tingkat ketelitian estimasi, di mana semakin kecil nilai SE maka estimasi yang dihasilkan semakin stabil. Nilai **Relative Standard Error (RSE)** sebesar **7,93%** menunjukkan bahwa hasil estimasi memiliki tingkat ketelitian yang baik karena berada di bawah batas **25%**. Dengan demikian, estimasi rata-rata tingkat kecemasan mahasiswa dapat dikatakan cukup akurat. Berdasarkan interval kepercayaan **95%**, diperoleh batas bawah sebesar **28,709** dan batas atas sebesar **39,277**. Hal ini berarti rata-rata tingkat kecemasan mahasiswa pada populasi diperkirakan berada pada rentang tersebut dengan tingkat kepercayaan sebesar **95%**.

Nilai **Design Effect (DEFF)** sebesar **8,283** menunjukkan adanya pengaruh desain pengambilan sampel terhadap varians estimasi. Nilai ini mengindikasikan bahwa karakteristik responden dalam setiap cluster cenderung memiliki kemiripan sehingga memengaruhi besarnya variasi hasil estimasi yang diperoleh. Oleh karena itu, penggunaan pembobotan pada metode **Two-Stage Cluster Sampling** diperlukan agar estimasi yang dihasilkan tetap dapat merepresentasikan populasi penelitian.

Nilai estimasi rata-rata skor tingkat kecemasan mahasiswa sebesar **33,993** menunjukkan bahwa secara rata-rata mahasiswa pada populasi memperoleh skor kecemasan sekitar **34** dari rentang skor **10–50**. Artinya, tingkat kecemasan yang diestimasi merupakan rata-rata skor hasil pengukuran menggunakan kuesioner, sehingga angka tersebut menggambarkan kondisi kecemasan mahasiswa pada populasi yang menjadi sasaran penelitian.

---

# BAB IV KESIMPULAN

## Kesimpulan

Berdasarkan hasil penelitian yang telah dilakukan, dapat disimpulkan bahwa:

1. Instrumen penelitian yang digunakan telah memenuhi syarat validitas dan reliabilitas. Seluruh butir pertanyaan memiliki nilai Corrected Item-Total Correlation lebih dari 0,30 sehingga dinyatakan valid, sedangkan nilai Cronbach's Alpha sebesar **0,874** menunjukkan bahwa instrumen memiliki tingkat reliabilitas yang baik.

2. Berdasarkan metode **Two-Stage Cluster Sampling**, diperoleh estimasi rata-rata skor tingkat kecemasan mahasiswa sebesar **33,993** dengan Standard Error sebesar **2,696**, Relative Standard Error (RSE) sebesar **7,93%**, dan interval kepercayaan 95% sebesar **28,709–39,277**.

3. Berdasarkan rentang skor total kuesioner (10–50), hasil estimasi rata-rata skor sebesar **33,993** berada pada kategori **tinggi**. Hal ini menunjukkan bahwa secara umum mahasiswa pada populasi memiliki tingkat kecemasan yang tinggi dalam menghadapi ujian. Hasil tersebut menjawab tujuan penelitian, yaitu mengestimasi tingkat kecemasan mahasiswa menggunakan metode Two-Stage Cluster Sampling.

## Saran

1. Penelitian selanjutnya disarankan menggunakan jumlah responden yang lebih banyak agar hasil estimasi menjadi lebih representatif.

2. Variabel penelitian dapat dikembangkan dengan menambahkan faktor-faktor lain yang memengaruhi tingkat kecemasan mahasiswa sehingga hasil penelitian menjadi lebih komprehensif.
