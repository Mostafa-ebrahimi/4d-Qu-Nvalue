###########
install.packages("magick")
library( rgl )
library(magick)

rm(list=ls())

A=file.choose()
Dat=read.csv(A,header=T)

head(Dat)
attach(Dat)

colors <- c("green", "red")
Dat$color <- colors[ as.numeric( as.factor(Dat$SOIL.TYPE) ) ]
plot3d(N.value,Qu,Water.Content, col = Dat$color, type = "s", radius = 1.5)
play3d( spin3d( axis = c(0, 0, 1), rpm = 1), duration = 100 )