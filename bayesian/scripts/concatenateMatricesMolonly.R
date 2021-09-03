path <- "sequences/alignedSeqs/substModels/nexus"
pattern <- "trimmed.nex$"
 
tbea::concatNexus(matrices = NULL, pattern = pattern,
                  filename = paste(path, "concatenatedMolonly.nexus", sep = "/"),
                  path = path, 
                  morpho = FALSE,
                  morphoFilename = "morpho",
                  sumFilename = "partitionsMolonly.txt")
