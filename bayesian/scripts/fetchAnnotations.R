library(seqinr)

choosebank("genbank", verbose = TRUE)

iterTaxon <- query("iterTaxon", "SP=Carcharhiniformes AND M=DNA")

annot <- getAnnot(iterTaxon)

save(annot, file = "carcharhiniformes.rda")

closebank()
