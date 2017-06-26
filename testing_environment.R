g <- gl(2,50, labels = c("Male", "Female")) #Length 100
head(g)
str(g)
x <- rnorm(100)
y <- rnorm(100)
plot(x,y)
plot(x,y, type="n")
points(x[g=="Male"], y[g=="Male"], col = "blue")
points(x[g=="Female"], y[g=="Female"], col = "red", pch=19)

