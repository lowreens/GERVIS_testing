library(ggplot2)

x <- NULL
y <- "Ivykiai"

bad <- c("Rizikos.objekto.Id","X","Ivykiai","Ivykio.data", "Kap_remonto_data")
tested <- colnames(X)[-c(1,which(colnames(X)%in%bad))]
n <- length(tested)
  
p <- list()

for(i in 1:n)
{
x <- tested[i]
y <- "Ivykiai"
pav <- c(x,y)

p[[i]] <- ggplot(X, aes_string(x=x,y=y))
p[[i]] <- p[[i]] + stat_density2d(geom="tile", aes(fill = ..density..), contour = FALSE, h=10, n=100)
}

multiplot(plotlist=p, col=4)
