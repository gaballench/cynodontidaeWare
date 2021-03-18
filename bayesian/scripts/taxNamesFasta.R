# get trimmed sequences to concatenate
trimmed <- dir(path = "sequences/alignedSeqs/substModels", pattern = "trimmed.fasta")
# rename sequences
for (i in paste("sequences/alignedSeqs/substModels", trimmed, sep = "/")) {
    alig <- seqinr::read.fasta(file = i)
    taxname <- unname(sapply(alig, function(x) paste(unlist(strsplit(attr(x, "name"), split = "_"))[1:2], collapse = "_")))
    seqinr::write.fasta(sequences = alig, names = taxname, file.out = i)
}
