# Script for carrying out format conversion from .tre to .newick
# There are two approaches, replacements with grep-like native R
# functions or using sed from a system call.
# Maybe it would be interesting to explore both approachs
# There is even an easier approach for the first search and is using subsetting
# However subsetting seems risky as perhaps my .tre files are formatted in a different way as those from other analyses.

treToNewick <- function(file, output, subsetting = TRUE){
    tree <- readLines(file)
    if(subsetting) {
        tree <- tree[-c(1,length(tree))]
    } else {
        tree <- gsub(pattern = "tread.*", replacement = "", x = tree, ignore.case = TRUE)
        tree <- gsub(pattern = "proc-;.*", replacement = "", x = tree, ignore.case = TRUE)
        tree <- gsub(pattern = "proc/.*", replacement = "", x = tree, ignore.case = TRUE)
    }

    tree <- gsub(pattern = "*", replacement = ";", x = tree, fixed = TRUE)
    tree <- gsub(pattern = " ", replacement = ",", x = tree, fixed = TRUE)
    tree <- gsub(pattern = ")(", replacement = "),(", x = tree, fixed = TRUE)
    tree <- gsub(pattern = ",)", replacement = ")", x = tree, fixed = TRUE)
    tree <- gsub(pattern = "_", replacement = " ", x = tree, fixed = TRUE)
    tree <- gsub(pattern = ",=", replacement = ":", x = tree, fixed = TRUE)
    tree <- gsub(pattern = "=", replacement = ":", x = tree, fixed = TRUE)
    tree <- gsub(pattern = " =", replacement = ":", x = tree, fixed = TRUE)
    tree <- gsub(pattern = "=", replacement = ":", x = tree, fixed = TRUE)
    tree <- gsub(pattern = ":/", replacement = "", x = tree, fixed = TRUE)
    tree <- gsub(pattern = ":", replacement = " ", x = tree, fixed = TRUE)
    if(length(which(tree == "")) == 0) {
        writeLines(text = tree, con = output)
    } else {
        tree <- tree[-which(tree == "")]
        writeLines(text = tree, con = output)
    }

}
