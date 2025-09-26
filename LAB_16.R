# Laboratorio - análisis de Redes en R - Indicadores básicos globales

library(EconGeo)
# Cargar data
EL = read.csv("https://raw.githubusercontent.com/PABalland/ON/master/lesmis-el.csv")
# Ver ecabezado
head(EL)
# Transformar a matriz
MM <-  get_matrix(EL)
library(igraph)
g <- graph_from_data_frame(d=EL, directed = F)
plot(g)
EL$Weight = NULL
head(EL)
install.packages("networkD3")
library(networkD3)
simpleNetwork(EL)
