##############################################################
# ESTIMASI TINGKAT KECEMASAN
# TWO-STAGE CLUSTER SAMPLING
##############################################################

#=============================================================
# 1. MEMANGGIL PACKAGE
#=============================================================

library(readxl)
library(psych)
library(survey)
library(dplyr)

#=============================================================
# 2. IMPORT DATA
#=============================================================

data <- read_excel("C:/Users/ameli/Downloads/Formulir tanpa judul (Jawaban) (8).xlsx")
View(data)

str(data)
summary(data)

#=============================================================
# 3. MEMILIH ITEM KUESIONER
#=============================================================

item <- data[,paste0("P",1:10)]

#=============================================================
# 4. UJI VALIDITAS
#=============================================================

hasil <- alpha(item)

validitas <- data.frame(
  Item = rownames(hasil$item.stats),
  Corrected_Item_Total = round(hasil$item.stats$r.drop,3)
)

validitas$Keterangan <- ifelse(
  validitas$Corrected_Item_Total>0.30,
  "Valid",
  "Tidak Valid"
)

validitas

#=============================================================
# 5. UJI RELIABILITAS
#=============================================================

alpha <- hasil$total$raw_alpha

cat("Cronbach Alpha =",round(alpha,3),"/n")

if(alpha>=0.70){
  cat("Instrumen Reliabel")
}else{
  cat("Instrumen Tidak Reliabel")
}

#=============================================================
# 6. MEMBUAT SKOR TOTAL
#=============================================================

data$Skor_Total <- rowSums(item)

summary(data$Skor_Total)

mean(data$Skor_Total)

sd(data$Skor_Total)

#=============================================================
# 7. HISTOGRAM
#=============================================================

hist(data$Skor_Total,
     main="Histogram Tingkat Kecemasan",
     xlab="Skor Total",
     ylab="Frekuensi",
     col="lightblue",
     border="black")

#=============================================================
# 8. MENENTUKAN POPULASI DAN SAMPEL
#=============================================================

N2024 <- 24
N2025 <- 32

n2024 <- 13
n2025 <- 17

#=============================================================
# 9. MEMBUAT BOBOT SAMPEL
#=============================================================

data$Bobot <- ifelse(
  data$Angkatan==2024,
  N2024/n2024,
  N2025/n2025
)

data$Bobot

#=============================================================
# 10. MEMBUAT CLUSTER
#=============================================================

data$Cluster <- as.factor(data$Angkatan)

#=============================================================
# 11. DESAIN SURVEI TWO-STAGE CLUSTER
#=============================================================

design.cluster <- svydesign(
  id=~Cluster,
  weights=~Bobot,
  data=data
)

#=============================================================
# 12. ESTIMASI RATA-RATA TWO-STAGE CLUSTER
#=============================================================

estimasi.cluster <- svymean(
  ~Skor_Total,
  design.cluster,
  deff = TRUE
)

estimasi.cluster

#=============================================================
# 13. STANDARD ERROR
#=============================================================

SE.cluster <- SE(estimasi.cluster)

SE.cluster

#=============================================================
# 14. CONFIDENCE INTERVAL
#=============================================================

CI.cluster <- confint(estimasi.cluster)

CI.cluster

#=============================================================
# 15. RELATIVE STANDARD ERROR
#=============================================================

RSE.cluster <- cv(estimasi.cluster)*100

RSE.cluster

