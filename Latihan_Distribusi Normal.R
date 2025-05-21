
#Membuat Function di RStudio
distribusi_normal <- function(mu, sigma){
  x <- seq(-100, 100, length(1000))
  x1 <- 1/sqrt(2*pi*sigma)
  x2 <- -1/2*((x-mu)/sigma)**2
  return(x1*exp(x2))
}

#Deklarasi Nilai Variable
mu = 30
sigma = 5

#Memanggil function yg sudah di buat
q <- distribusi_normal(mu, sigma)
plot(q)

#Membuat matrix di RStudio
a <- matrix(c(-3, -1, 2, 11, 2, 1, -1, 8, -2, 1, 2, -3), nrow = 3, byrow = TRUE)
a

#OBE Baris Pertama
a[1,] = a[1,]/a[1,1]
a[2,] = -a[2,1]*a[1,] + a[2,]
a[3,] = -a[3,1]*a[1,] + a[3,]
a

#OBE Baris Kedua
a[2,] = a[2,]/a[2,2]
a[1,] = -a[1,2]*a[2,] + a[1,]
a[3,] = -a[3,2]*a[2,] + a[3,]
a

#OBE Baris Ketiga
a[3,] = a[3,]/a[3,3]
a[1,] = -a[1,3]*a[3,] + a[1,]
a[2,] = -a[2,3]*a[3,] + a[2,]
a