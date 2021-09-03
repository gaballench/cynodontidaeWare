path = "sequences/alignedSeqs/substModels"
pattern = "trimmed.fasta$"
outpath <- "sequences/alignedSeqs/substModels/nexus"

tbea::fasta2nexus(path = path, outpath = outpath, pattern = pattern, wholeAlign = TRUE)
