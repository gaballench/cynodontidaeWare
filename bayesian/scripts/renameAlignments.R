source("scripts/renameFasta.R")

### iterate over the fasta files and create the renamed version of the sequences
for (i in dir(pattern = "fa$", path = "sequences")) {
    renameFasta(file.in = paste("sequences/", i, sep = ""),
                file.out = paste("sequences/", i, ".renamed.fasta", sep = ""), 
                marker = unname(unlist(strsplit(i, split = "\\.")))[1], 
                order = c("taxname", "marker", "accnum"), 
                separator = "_")
}
