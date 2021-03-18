library(apex)    
trimmed <- dir(path = "sequences/alignedSeqs/substModels", pattern = "trimmed.fasta$")
dir.create("sequences/alignedSeqs/substModels/nexus")
# read all trimmed datasets
markers <- apex::read.multiFASTA(paste("sequences/alignedSeqs/substModels", trimmed, sep = "/"))
markers
wholeAlign <- apex::concatenate(markers)
ape::write.nexus.data(x = wholeAlign, file = "sequences/alignedSeqs/substModels/nexus/wholeAlign.nex", interleaved = FALSE)
for (i in seq_along(markers@dna)) {
    cat("Writing nexus dataset ", names(markers@dna[i]), "\n", sep = "")
    ape::write.nexus.data(x = markers@dna[[i]],
                          file = paste("sequences/alignedSeqs/substModels/nexus/", names(markers@dna[i]), ".nex", sep = ""),
                          interleaved = FALSE)
}
