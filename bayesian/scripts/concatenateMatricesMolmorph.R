source("scripts/concatNexus.R")

path <- "sequences/alignedSeqs/substModels/nexus"
pattern <- "trimmed.nex$"

concatNexus(pattern = pattern,
            filename = paste(path, "concatenatedMolmorph.nexus", sep = "/"),
            path = path, 
            morpho = TRUE,
            morphoFilename = paste(path, grep(pattern = "morpho", x = dir(path, pattern), value = TRUE), sep = "/"),
            sumFilename = "partitionsMolmorph.txt")
