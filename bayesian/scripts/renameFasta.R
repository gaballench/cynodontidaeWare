renameFasta <- function(file.in, file.out, marker, order = c("taxname", "marker", "accnum"), separator = "_", ...) {
    # read the alignment in memory with the seqinr package
    alignment <- seqinr::read.fasta(file = file.in, ...)
    # vectorized, horrible code, explicit is better than implicit
    taxname <- unname(sapply(alignment, function(x) paste(unlist(strsplit(attr(x, "Annot"), split = " "))[2:3], collapse = separator)))
    # vectorized, horrible code, explicit is better than implicit
    accnum <- unname(sapply(alignment, function(x) unlist(strsplit(attr(x, "Annot"), split = " "))[1]))
    # correct text removing the '>' element from accession numbers
    accnum <- gsub(pattern = ">", replacement = "", x = accnum)
    nameElements <- data.frame(taxname = taxname, marker = rep(marker,  times = length(alignment)), accnum = accnum, stringsAsFactors = FALSE)
    # sort the columns in the desired order
    nameElements <- nameElements[order]
    # vectorized, horrible code
    seqNames <- apply(X = nameElements, MARGIN = 1, function(x) paste(x, collapse = separator))
    
    # write the fasta with the name argument as desired
    seqinr::write.fasta(sequences = alignment, names = seqNames, file.out = file.out)
}
