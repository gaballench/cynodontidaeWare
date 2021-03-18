### magrittr package for the pipe operator
library(magrittr)

### Load annotations downloaded from genbank
load("carcharhiniformes.rda")

### João's taxon list
taxa <- readLines("taxa.tab")

### fetch species from annotations
spp <- sapply(annot, function(x) grep(pattern = "ORGANISM", x, value = TRUE)[1])

### clean the trivial text
spp <- gsub(pattern = "  ORGANISM  ", replacement = "", x = spp)

### fetch markers from annotations
markers <- sapply(annot, function(x) grep(pattern = "/gene", x, value = TRUE)[1])

### fetch voucher from annotations
vouchers <- sapply(annot, function(x) grep(pattern = "voucher", x, value = TRUE)[1])

### organelles
organelles <- sapply(annot, function(x) grep(pattern = "organelle", x, value = TRUE)[1])

### clean the trivial text
markers <- gsub(pattern = "                     /gene=\"", replacement = "", x = markers)
markers <- gsub(pattern = "\"", replacement = "", x = markers)

### accession numbers
accNums <- sapply(annot, function(x) grep(pattern = "ACCESSION", x, value = TRUE)[1])
accNums <- strsplit(accNums, "\\s+") %>% sapply(., function(x) x[2])

### correct the spelling of the markers
markers <- gsub(pattern = "co 1", replacement = "COI", x = markers)
markers <- gsub(pattern = "CO1", replacement = "COI", x = markers)
markers <- gsub(pattern = "COII", replacement = "COI", x = markers)
markers <- gsub(pattern = "cox1", replacement = "COI", x = markers)
markers <- gsub(pattern = "cob", replacement = "CytB", x = markers)
markers <- gsub(pattern = "cytb", replacement = "CytB", x = markers)
markers <- gsub(pattern = "Cytb", replacement = "CytB", x = markers)
markers <- gsub(pattern = "CYTB", replacement = "CytB", x = markers)
markers <- gsub(pattern = "RAG-1", replacement = "RAG1", x = markers)

### Mount a data frame with the data above so that scripts can load it and filter accession numbers and fetch them by packages
accessData <- data.frame(species = spp, marker = markers, accession = accNums, stringsAsFactors = FALSE)

write.table(accessData, file = "accessData.tab", row.names = FALSE, sep = "\t")

### summarize species and markers in order to explore which markers are better represented in genbank in order to maximize the alignment
crossTab <- xtabs(~ markers + spp, drop.unused.levels = TRUE)
### coerce to data frame in order to calculate frequencies
crossTab <- as.data.frame(crossTab)
### remove combinations with zero-freq
crossTab <- crossTab[which(crossTab$Freq > 0), ]

### which species from genbank are represented in João's list?
names(table(spp[spp %in% taxa]))

### which markers are associated to these species?
names(table(markers[spp %in% taxa]))

### view the interaction between both variables
View(crossTab[which(crossTab$spp %in% taxa), ])

### Try to summarize for printing
aggregated <- aggregate(markers ~ spp, FUN = paste, data = crossTab)
### write to file for printing
aggregated <- data.frame(species = aggregated$spp, markers = markersPasted)

markersPasted <- paste0(aggregated$markers) %>%
    gsub("c\\(", "", .) %>% 
    gsub("\\\"", "", .) %>% 
    gsub(")", "", .)
aggregated$markers <- markersPasted

write.table(aggregated, file = "markersPerSp.tab", row.names = FALSE, sep = "\t")

### view only these taxa picked by João that are in the sequences dataset
View(aggregated[which(aggregated$species %in% taxa), ])
### write down to a file
write.table(aggregated[which(aggregated$species %in% taxa), ], file = "markersPerSpInList.tab", row.names = FALSE, sep = "\t")

### from these short-list taxa, which markers overall do we have?
aggregated[which(aggregated$species %in% taxa), "markers", drop = TRUE] %>%
    strsplit(., split = ", ") %>%
    unlist %>%
    table %>%
    names %>%
    sort

