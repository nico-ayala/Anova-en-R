team= c(rep("Dallas",17),rep("GB",17),rep("Denver",17),rep("Miami",17),
        rep("SF",17))
weight=c(Libro1$Dallas, Libro1$GB, Libro1$Denver, Libro1$Miami, Libro1$SF)
df=data.frame(team,weight)
boxplot(weight ~ team, data=df)

Libro1.aov = aov(weight~team, data = df)
summary(Libro1.aov)

#H0= Las medias/varianzas de los grupos no tienen diferencias significativas
#H1= Las medias/varianzas de los grupos tienen diferencias 
#P = 0.189 > 0.05 La hipotesis nula se acepta, no hay diferencias significactivas de las medias

