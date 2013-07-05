X <-read.csv2("pervazos.csv")
Encoding(levels(X[,"Padalinys"]))<-"UTF-8"
Encoding(levels(X[,"Tarpstotis"]))<-"UTF-8"
Encoding(levels(X[,"Dangos_tipas_prieigose"]))<-"UTF-8"
Encoding(colnames(X))<-"UTF-8"
