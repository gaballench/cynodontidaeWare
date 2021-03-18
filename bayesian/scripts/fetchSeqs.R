### magrittr package for the pipe operator
library(magrittr)

### Load 
accessData <- read.delim(file = "accessData.tab", header = TRUE, stringsAsFactor = FALSE)
### João's taxon list
taxa <- readLines("taxa.tab")

### Subset the whol-Carcharhiniformes dataset to the species provided by João
accessData <- accessData[accessData$species %in% taxa, ]

###### prototype the sequence fetcher per marker
markersToFetch <- c("COI", "CytB", "dlx1", "dlx2", "LDHA6", "NADH2", "ND1", "ND2", "ND4", "RAG1")

### design a meta-script
prefix <- "perl -e \'use LWP::Simple;getstore(\"http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&retmode=text&retmax=500&id=\".join(\",\",qw("
accNumbers <- vector(mode = "character")
middlePiece <- ")),\""
fileName <- vector(mode = "character")
suffix <- "\");\'"


for (i in seq_along(markersToFetch)) {
    cat("Starting to fetch ", markersToFetch[i], "\n\n", sep = "")
    # make a vector of accession numbers for the given marker
    accNumbers <- subset(accessData, marker == markersToFetch[i],  select = accession, drop = TRUE)
    # if the number of accession numbers is larger than 300 fetch by packages of 300 accession numbers
    step <- 0
    while (length(accNumbers) > 300) {
        cat("Entering a large-vector instance for ", markersToFetch[i], " with ", length(accNumbers), " accession numbers...\n", sep = "")
        fileName <- paste(markersToFetch[i], step, ".sharks", ".fasta", sep = "")
        system(paste(prefix, paste(accNumbers[1:300], collapse = " "), middlePiece, fileName,  suffix, sep = ""))
        accNumbers <- accNumbers[-c(1:300)]
        step <- step + 1
    }
    # now if the length of the accNumbers vector is less than 300, fetch at once. this catches originally-small vectors that fail to enter the while loop, and the reminder of large ones that remain after chunks pf size 500 are taken one by one.
    if (length(accNumbers) <= 300) {
        if (step == 0) {
            fileName <- paste(markersToFetch[i], ".sharks", ".final", ".fasta", sep = "") # without the 'step' part because it is an originally-small vector
        } else {
            fileName <- paste(markersToFetch[i], step, ".sharks", ".fasta", sep = "") # with the 'step' part, it is a reminder
        }
        # download the file
        system(paste(prefix, paste(accNumbers, collapse = " "), middlePiece, fileName,  suffix, sep = ""))
    }
    # some reporting
    if (length(dir(pattern = markersToFetch[i])) == 0) {
        cat("Download failed for marker ", markersToFetch[i], " :(\n\n", sep = "")
    } else {
        cat("Files ", paste(dir(pattern = markersToFetch[i]), collapse = ", "), " downloaded successfully :)\n\n", sep = "")
    }
}

### now merge the chunks into single-marker files with bash code
for (i in markersToFetch) {
    if (length(dir(pattern = i)) > 1) {
        # concatenate all chunk files into a single final file
        command <- paste("touch ", i,  ".sharks.final.fasta; for i in ", i, "*; do cat $i >> ", i, ".sharks.final.fasta; done", sep = "")
        system(command)
        # remove with regexp all the chunk files so that only finals remain
        removeChunks <- paste("rm ", i, "[0-9]*", sep = "")
        system(removeChunks)
    } else {
        next
    }
}
