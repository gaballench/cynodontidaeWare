### load the seqinr package
library(seqinr)

## load taxa list in the taxa.tab file
taxa <- readLines("taxa.tab")

## open connection to genbank
choosebank("genbank")

nseqs <- rep(NA, times = length(taxa))
accessions <- vector()
accessTaxa <- vector()
## iterate over taxa and fetch the nelem value
for (i in seq_along(taxa)) {
    cat("Fetching number of sequences for ", taxa[i], "\n", sep = "")
    iterTaxon <- try(query("iterTaxon", paste("SP=", taxa[i], " AND M=DNA", sep = "")))
    if (inherits(iterTaxon, "try-error")) {
        nseqs[i] <- NA
    } else {
        nseqs[i] <- iterTaxon$nelem
        accessions <- c(accessions, sapply(iterTaxon$req, getName))
        accessTaxa <- c(accessTaxa, rep(taxa[i], times = iterTaxon$nelem))
    }
    cat("Done with ", taxa[i], "(", nseqs[i], " sequences)\n", sep = "")
}

### fetch annotations for meta-analysis

sharkAnnot <- matrix(nrow = length(accessions), ncol = 3)
sharkSeq <- vector()
annot <- vector()

for (i in seq_along(accessions)) {
    cat("Processing accession ", accessions[i], " iteration ", i, "\n")
    sharkSeq <- query("sharkSeq", paste("AC=", accessions[i], sep = ""))
    annot <- getAnnot(sharkSeq$req)[1:2]
    sharkAnnot[i, 1] <- accessions[i]
    sharkAnnot[i, 2] <- annot[[1]][1]
    sharkAnnot[i, 3] <- annot[[1]][2]
}

closebank()

write.table(sharkAnnot, "sharkAnnotations.tab", sep = "\t", row.names = FALSE)
