# 6 - VERI DUZENLEME

library(dplyr) # eger dplyr isimli paket bu sekilde calismazsa sizin R'da yuklu degil demektir. Oncesinde install.packages("dplyr") calistirilmalidir.
library(readr) # eger readr isimli paket bu sekilde calismazsa sizin R'da yuklu degil demektir. Oncesinde install.packages("readr") calistirilmalidir.

TR_stu <- read_csv("https://raw.githubusercontent.com/gungorMetehan/TREduData/main/TREduData_student.csv") # calisma yapmak icin bize bir veri seti lazim. Bunu kullanabiliriz.

glimpse(TR_stu) # kisa bir bakis atalim veri setine.

TR_stu <- TR_stu |>
  mutate_if(is.character, as.factor)

TR_stu <- TR_stu |>
  mutate_at(c("gadm_L3number", "metropolitan"), as.factor)

## filter()
TR_stu |>
  filter(student_s_pre_total_21_22 > 15000)

TR_stu |>
  filter(student_s_pre_total_21_22 > 15000 & metropolitan == 0)

TR_stu |>
  filter(NUTS_level1 %in% c("TRA", "TRB", "TRC"))

## arrange()
TR_stu |>
  arrange(plate_number)

TR_stu |>
  arrange(desc(plate_number))

## distinct()
TR_stu |>
  distinct(NUTS_level1_name)

TR_stu |>
  distinct(NUTS_level1_name, .keep_all = TRUE)

TR_stu |>
  count(NUTS_level1_name)

## mutate()
TR_stu3 <- TR_stu |>
  mutate(toplam_devlet_lise = student_s_high_m_21_22 + student_s_high_f_21_22) # yeni olusan degiskeni veri setine ekledi, ama nereye?

# Onemli Hatirlatma: filter(), arrange() ve distinct() basliklari altinda yapilan islemlerde veri setini degistirmemistik, cunku bir atama yapmamistik.
# Ancak bakarsaniz TR_stu3 isimli yeni bir nesne var. Bu nesnede farkli bir degisken yer aliyor, biz olusturduk bunu.

TR_stu |>
  mutate(toplam_devlet_lise = student_s_high_m_21_22 + student_s_high_f_21_22, .before = province_upper)

TR_stu |>
  mutate(toplam_devlet_lise = student_s_high_m_21_22 + student_s_high_f_21_22, .after = NUTS_level1_name)

## select()
TR_stu |>
  select(plate_number, province_upper, student_all_total_21_22)

TR_stu |>
  select(plate_number:NUTS_level2)

TR_stu |>
  select(!plate_number:NUTS_level2)

TR_stu |>
  select(where(is.factor))

TR_stu |>
  select(starts_with("student_all"))

TR_stu |>
  select(ends_with("_21_22"))

TR_stu |>
  select(contains("ele"))

## rename()
TR_stu |>
  rename(L3 = gadm_L3number)

TR_stu |>
  rename(L3 = gadm_L3number, plaka = plate_number, sehir = province_upper)

## group_by()
TR_stu |>
  group_by(NUTS_level1_name)

## summarize()
TR_stu |>
  group_by(NUTS_level1_name) |>
  summarize(ort_dev_anaokulu = mean(student_s_pre_f_20_21))

## slice_*() Fonksiyonlari

# veri setinin ilk 5 satirini secmek icin
TR_stu |>
  slice_head(n = 5)

# veri setinin son 3 satirini secmek icin
TR_stu |>
  slice_tail(n = 3)

# veri setindeki bir degiskenin en kucuk 3 degerini iceren satirlari secmek icin
TR_stu |>
  slice_min(student_pre_total_19_20, n = 3)

# veri setindeki bir degiskenin en buyuk 3 degerini iceren satirlari secmek icin
TR_stu |>
  slice_max(student_pre_total_19_20, n = 3)

# veri setinden rastgele 4 satir secmek icin
TR_stu |>
  slice_sample(n = 4)

## Pipe (|>) Baglanti Operatoru
TR_stu |>
  filter(metropolitan == 1) |>
  select(where(is.double))

TR_stu |>
  filter(student_s_pre_total_21_22 > 10000 & metropolitan == 0) |>
  select(plate_number:NUTS_level2) |>
  rename(plaka = plate_number, sehir = province_upper) |> 
  arrange(plaka)

## Veri Setlerini Birlestirme (Join Fonksiyonlari)

## orneklendirebilmek icin en az iki veri setine ihtiyacimiz var. bir yerden cekebilirdik, ancak kucuk ve uygun veri setlerini kendimiz de asagidaki gibi olusturabiliriz.
## 3 veri seti olusturalim, hem iki hem de uc veri setinin nasil birbiri ile birlestirilebildigi gorelim.
ogr_ID <- 1:6
sinif <- rep(7:8, 3)
matematik_O1 <- c(40, 40, 50, 80, 60, 40)
veri1 <- data.frame(ogr_ID, sinif, matematik_O1)
veri1

ID <- 1:8
sinif <- c(7, 8, 7, 8, 7, NA, 7, 8)
matematik_O2 <- c(45, 45, 60, 80, 55, 45, 60, 60)
veri2 <- data.frame(ID, sinif, matematik_O2)
veri2

ogr_ID <- 1:5
sozel <- c(100, 90, 90, 80, 80)
veri3 <- data.frame(ogr_ID, sozel)
veri3

### inner_join()

yeni_veri1 <- veri1 |>  
  inner_join(veri2, by = c("ogr_ID" = "ID"))
yeni_veri1

yeni_veri2 <- veri1 |> 
  inner_join(veri2, by = c("ogr_ID" = "ID")) |>
  inner_join(veri3)
yeni_veri2

### left_join()

yeni_veri3 <- veri1 |>  
  left_join(veri2, by = c("ogr_ID" = "ID"))
yeni_veri3

yeni_veri4 <- veri1 |>  
  left_join(veri2, by = c("ogr_ID" = "ID")) |>
  left_join(veri3)
yeni_veri4

### right_join()

yeni_veri5 <- veri1 |>  
  right_join(veri2, by = c("ogr_ID" = "ID"))
yeni_veri5

yeni_veri6 <- veri1 |>  
  right_join(veri2, by = c("ogr_ID" = "ID")) |>  
  right_join(veri3)
yeni_veri6

### full_join()

yeni_veri7 <- veri1 |>  
  full_join(veri2, by = c("ogr_ID" = "ID"))
yeni_veri7

yeni_veri8 <- veri1 |>  
  full_join(veri2, by = c("ogr_ID" = "ID")) |>  
  full_join(veri3)
yeni_veri8

### semi_join()

yeni_veri9 <- veri2 |>  
  semi_join(veri3, by = c("ID" = "ogr_ID"))
yeni_veri9

### anti_join()

yeni_veri10 <- veri2 |>  
  anti_join(veri3, by = c("ID" = "ogr_ID"))
yeni_veri10
