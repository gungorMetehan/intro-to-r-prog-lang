# 5 - VERİYİ İÇE ve DIŞA AKTARMA
## İçe Aktarma (Import)

# R’da veriler ile çalışmalar yürütmek için verileri içe aktarmak (import) gerekebilir. 
# Bunun için pek çok alternatif yol bulunmaktadır. Bu eğitimde özellikle iki yol ele alınacaktır. 
# Bunlardan birincisi RStudio’nun sunduğu bir imkan olan Environment kısmındaki ‘Import Dataset’ menüsü, 
# diğeri ise fonksiyonlar aracılığı ile içe aktarma olacaktır.

TR_university <- read.csv("https://raw.githubusercontent.com/gungorMetehan/TREduData/main/TREduData_university.csv")

library(readr)
TR_university <- read_csv("https://raw.githubusercontent.com/gungorMetehan/TREduData/main/TREduData_university")

# Farklı formattaki verilerin içe aktarılması
# read_csv() - Virgülle ayrılmış değerlerden oluşan CSV dosyaları içindir.
# read_tsv() - Boşlukla ayrılmış değerlerden (tab-separated values) oluşan dosyalar içindir.
# read_csv2()	- Noktalı virgülle ayrılmış değerlerden oluşan dosyalar içindir (ondalıklar için virgül kullanılmıştır).
# read_delim()	- Değerlerin farklı şekillerde birbirinden ayrıldığı özel dosya biçimleri içindir (örneğin |).
# read_fwf()	- Karakterlerin genişliği üzerinden bir arşivleme yapılan metin dosyaları içindir (örneğin, eski veri setlerinde işe yarayabilir. Bu setlerde, değerler birbirinden ayrılmamıştır ve her sütunun genişliği sabittir. Optik okuyuculardan alınan veriler buna örnek gösterilebilir).
# read_table() - Veri setindeki değerler boşluklarla birbirinden ayrıldığında kullanılabilir. Fonksiyon, boşlukların başındaki ve sonundaki değerleri göz önünde bulundurarak bu boşlukları silerek hücreleri oluşturur.


## Dışa Aktarma (Export)

# öncelikle iris veri setini çağıralım ve ilk 15 satırından oluşan iris15 isimli yeni bir veri seti oluşturalım.
data(iris)
iris15 <- head(iris, 15)

# write.table() fonksiyonu ile iris15'i bir metin dosyası olarak kaydedelim.
write.table(iris15, file = 'iris15.txt', col.names = TRUE, row.names = FALSE)

# write.table() fonksiyonu ile iris15'i bir CSV dosyası olarak kaydedelim.
write.table(iris15, file = 'iris15.csv', row.names = FALSE, sep = ",")

# öncelikle iris veri setini çağıralım ve ilk 20 satırından oluşan iris20 isimli yeni bir veri seti oluşturalım.
data(iris)
iris20 <- head(iris, 20)

# readr paketini çalıştıralım (fonksiyonun paketidir)
library(readr)

# çıktıyı çalışma dizinine kaydedelim
write_csv(iris20, file = "iris20.csv")