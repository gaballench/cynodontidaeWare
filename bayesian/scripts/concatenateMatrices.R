source("concatNexus.R")

path <- "."
pattern <- "trimmed.nex$"

concatNexus(pattern = pattern,
            filename = paste(path, "concatenated.nexus", sep = "/"),
            morpho = FALSE,
            morphoFilename = paste(path, grep(pattern = "morpho", x = dir(path, pattern), value = TRUE), sep = "/"),
            sumFilename = "partitions.txt")
