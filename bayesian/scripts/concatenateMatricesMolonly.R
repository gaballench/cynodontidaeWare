source("scripts/concatNexus.R")

path <- "sequences/alignedSeqs/substModels/nexus"
pattern <- "trimmed.nex$"

concatNexus(pattern = pattern,
            path = path, 
            filename = paste(path, "concatenatedMolonly.nexus", sep = "/"),
            morpho = FALSE,
            morphoFilename = "morpho", 
            sumFilename = paste(path, "partitionsMolonly.txt", sep = "/"))
