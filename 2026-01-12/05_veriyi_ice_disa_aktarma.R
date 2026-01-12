# 5 - VERIYI ICE ve DISA AKTARMA
## Ice Aktarma (Import)

# R'da veriler ile calismalar yurutmek icin verileri ice aktarmak (import) gerekebilir. 
# Bunun icin pek cok alternatif yol bulunmaktadir. Bu egitimde ozellikle iki yol ele alinacaktir. 
# Bunlardan birincisi RStudio'nun sundugu bir imkan olan Environment kismindaki 
# 'Import Dataset' menusudur, digeri ise fonksiyonlar araciligi ile ice aktarma olacaktir.

TR_university <- read.csv(
  "https://raw.githubusercontent.com/gungorMetehan/TREduData/main/TREduData_university.csv"
)

library(readr)
TR_university <- read_csv(
  "https://raw.githubusercontent.com/gungorMetehan/TREduData/main/TREduData_university"
)

# Farkli formattaki verilerin ice aktarilmasi
# read_csv()  - Virgul ile ayrilmis degerlerden olusan CSV dosyalari icindir.
# read_tsv()  - Boslukla ayrilmis degerlerden (tab-separated values) olusan dosyalar icindir.
# read_csv2() - Noktali virgul ile ayrilmis degerlerden olusan dosyalar icindir (ondaliklar icin virgul kullanilmistir).
# read_delim()- Degerlerin farkli sekillerde birbirinden ayrildigi ozel dosya bicimleri icindir (ornegin |).
# read_fwf()  - Karakterlerin genisligi uzerinden arsivleme yapilan metin dosyalari icindir (eski veri setlerinde kullanilabilir).
# read_table()- Veri setindeki degerler bosluklarla birbirinden ayrildiginda kullanilabilir.


## Disa Aktarma (Export)

# oncelikle iris veri setini cagirip ilk 15 satirindan olusan iris15 isimli yeni bir veri seti olusturalim
data(iris)
iris15 <- head(iris, 15)

# write.table() fonksiyonu ile iris15'i bir metin dosyasi olarak kaydedelim
write.table(iris15, file = "iris15.txt", col.names = TRUE, row.names = FALSE)

# write.table() fonksiyonu ile iris15'i bir CSV dosyasi olarak kaydedelim
write.table(iris15, file = "iris15.csv", row.names = FALSE, sep = ",")

# oncelikle iris veri setini cagirip ilk 20 satirindan olusan iris20 isimli yeni bir veri seti olusturalim
data(iris)
iris20 <- head(iris, 20)

# readr paketini calistiralim
library(readr)

# ciktiyi calisma dizinine kaydedelim
write_csv(iris20, file = "iris20.csv")
