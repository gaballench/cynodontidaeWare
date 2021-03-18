---
title: "The fossil record of Saber-Tooth Characins (Teleostei: Characiformes: Cynodontinae), their phylogenetic relationships, and paleobiogeographical implications"
subtitle: "Supplementary material"
author: 
    - Gustavo A. Ballen^[Museu de Zoologia da Universidade de São Paulo, Smithsonian Tropical Research Institute, and Queen Mary University of London]
    - Jorge W. Moreno-Bernal^[Smithsonian Tropical Research Institute and Universidad del Norte] 
    - Carlos Jaramillo^[Smithsonian Tropical Research Institute, U. Montpellier, and University of Salamanca]
output: 
    html_document:
        keep_md: true
        self_contained: true
urlcolor: blue
toc: true
biblio-style: apalike
bibliography: /home/balleng/Dropbox/Gustavo/Bibtex/PhDThesis.bib
header-includes: 
- \usepackage{longtable}
- \usepackage{lscape}
- \renewcommand{\thesection}{S\arabic{section}}
- \renewcommand{\thetable}{S\arabic{table}}
- \renewcommand{\thefigure}{S\arabic{figure}}
---


```
## Loading required package: phangorn
```

```
## Registered S3 method overwritten by 'spdep':
##   method   from
##   plot.mst ape
```

```
## 
## Attaching package: 'seqinr'
```

```
## The following objects are masked from 'package:ape':
## 
##     as.alignment, consensus
```

# Repository structure 

The present repo has the following files and directories:

```
├── Ballen_et_al_Cynodontidae_supplementary.pdf
├── bayesian
│   ├── mrbayes
│   │   ├── beginExec.R
│   │   ├── concatenatedMolmorph.combinedTrees.tre
│   │   ├── concatenatedMolmorph.nexus
│   │   ├── concatenatedMolmorph.nexus.ckp
│   │   ├── concatenatedMolmorph.nexus.ckp~
│   │   ├── concatenatedMolmorph.nexus.con.tre
│   │   ├── concatenatedMolmorph.nexus.con.tre.svg
│   │   ├── concatenatedMolmorph.nexus.lstat
│   │   ├── concatenatedMolmorph.nexus.mcmc
│   │   ├── concatenatedMolmorph.nexus.parts
│   │   ├── concatenatedMolmorph.nexus.pstat
│   │   ├── concatenatedMolmorph.nexus.run1.p
│   │   ├── concatenatedMolmorph.nexus.run1.t
│   │   ├── concatenatedMolmorph.nexus.run2.p
│   │   ├── concatenatedMolmorph.nexus.run2.t
│   │   ├── concatenatedMolmorph.nexus.trprobs
│   │   ├── concatenatedMolmorph.nexus.tstat
│   │   ├── concatenatedMolmorph.nexus.vstat
│   │   ├── concatenatedMolonly.nexus
│   │   ├── concatenatedMolonly.nexus.ckp
│   │   ├── concatenatedMolonly.nexus.ckp~
│   │   ├── concatenatedMolonly.nexus.con.tre
│   │   ├── concatenatedMolonly.nexus.lstat
│   │   ├── concatenatedMolonly.nexus.mcmc
│   │   ├── concatenatedMolonly.nexus.parts
│   │   ├── concatenatedMolonly.nexus.pstat
│   │   ├── concatenatedMolonly.nexus.run1.p
│   │   ├── concatenatedMolonly.nexus.run1.t
│   │   ├── concatenatedMolonly.nexus.run2.p
│   │   ├── concatenatedMolonly.nexus.run2.t
│   │   ├── concatenatedMolonly.nexus.trprobs
│   │   ├── concatenatedMolonly.nexus.tstat
│   │   ├── concatenatedMolonly.nexus.vstat
│   │   ├── cynoMolmorph.log
│   │   ├── cynoMolmorph.mb
│   │   ├── cynoMolmorph.mb~
│   │   ├── cynoMolonly.log
│   │   ├── cynoMolonly.mb
│   │   ├── cynoMolonly.mb~
│   │   ├── densiTree.molmorph.svg
│   │   ├── densiTree_molmorph_svg.png
│   │   ├── finishExec.R
│   │   ├── run_mrbayes_analysis_molmorph.sh
│   │   └── run_mrbayes_analysis_molonly.sh
│   ├── outmbConcat
│   ├── partitionsMolmorph.txt
│   ├── partitionsMolonly.txt
│   ├── phyloCynodontidae.uprj
│   ├── scripts
│   │   ├── autoAligner.sh
│   │   ├── concatenateMatricesMolmorph.R
│   │   ├── concatenateMatricesMolonly.R
│   │   ├── concatenateMatrices.R
│   │   ├── concatNexus.R
│   │   ├── createNexusFiles.R
│   │   ├── exploreAttrSharks.R
│   │   ├── fetchAnnotations.R
│   │   ├── fetchSeqs.R
│   │   ├── mineSeqs.R
│   │   ├── renameAlignments.R
│   │   ├── renameFasta.R
│   │   └── taxNamesFasta.R
│   └── sequences
│       ├── 16S.fa
│       ├── 16S.fa.renamed.fasta
│       ├── 18Snew.fa
│       ├── 18Snew.fa.renamed.fasta
│       ├── alignedSeqs
│       │   ├── 16S.fa.renamed.fasta
│       │   ├── 16S.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │   ├── 18S.fa.renamed.fasta
│       │   ├── 18S.fa.renamed.fasta.aligned.fasta
│       │   ├── 18S.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │   ├── ATPase6-8.fa.renamed.fasta
│       │   ├── ATPase6-8.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │   ├── autoAligner.sh
│       │   ├── beginExec.R
│       │   ├── COI.fa.renamed.fasta
│       │   ├── COI.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │   ├── CytB.fa.renamed.fasta
│       │   ├── CytB.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │   ├── finishExec.R
│       │   ├── Myh6.fa.renamed.fasta
│       │   ├── Myh6.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │   ├── RAG1.fa.renamed.fasta
│       │   ├── RAG1.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │   ├── RAG2.fa.renamed.fasta
│       │   ├── RAG2.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │   ├── rpS7.fa.renamed.fasta
│       │   ├── rpS7.fa.renamed.fasta.aligned.fasta
│       │   └── substModels
│       │       ├── 16S.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │       ├── 16S.fa.renamed.fasta.aligned.fasta.trimmed.fasta12.01_05_05_2020.out
│       │       ├── 18S.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │       ├── 18S.fa.renamed.fasta.aligned.fasta.trimmed.fasta15.42_28_07_2020.out
│       │       ├── ATPase6-8.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │       ├── ATPase6-8.fa.renamed.fasta.aligned.fasta.trimmed.fasta12.01_05_05_2020.out
│       │       ├── COI.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │       ├── COI.fa.renamed.fasta.aligned.fasta.trimmed.fasta12.01_05_05_2020.out
│       │       ├── CytB.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │       ├── CytB.fa.renamed.fasta.aligned.fasta.trimmed.fasta12.01_05_05_2020.out
│       │       ├── jmodeltest_script.sh
│       │       ├── morpho.trimmed.fasta
│       │       ├── Myh6.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │       ├── Myh6.fa.renamed.fasta.aligned.fasta.trimmed.fasta12.01_05_05_2020.out
│       │       ├── nexus
│       │       │   ├── 16S.fa.renamed.aligned.trimmed.nex
│       │       │   ├── 18S.fa.renamed.aligned.trimmed.nex
│       │       │   ├── ATPase6-8.fa.renamed.aligned.trimmed.nex
│       │       │   ├── COI.fa.renamed.aligned.trimmed.nex
│       │       │   ├── concatenatedMolmorph.nexus
│       │       │   ├── concatenatedMolonly.nexus
│       │       │   ├── CytB.fa.renamed.aligned.trimmed.nex
│       │       │   ├── morphology.cynodontidae.trimmed.NEXUSOLD
│       │       │   ├── morpho.trimmed.nex
│       │       │   ├── Myh6.fa.renamed.aligned.trimmed.nex
│       │       │   ├── partitionsMolonly.txt
│       │       │   ├── RAG1.fa.renamed.aligned.trimmed.nex
│       │       │   └── RAG2.fa.renamed.aligned.trimmed.nex
│       │       ├── RAG1.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │       ├── RAG1.fa.renamed.fasta.aligned.fasta.trimmed.fasta12.01_05_05_2020.out
│       │       ├── RAG2.fa.renamed.fasta.aligned.fasta.trimmed.fasta
│       │       └── RAG2.fa.renamed.fasta.aligned.fasta.trimmed.fasta12.01_05_05_2020.out
│       ├── ATPase6-8.fa
│       ├── ATPase6-8.fa.renamed.fasta
│       ├── COI.fa
│       ├── COI.fa.renamed.fasta
│       ├── CytB.fa
│       ├── CytB.fa.renamed.fasta
│       ├── merged_document.gb
│       ├── Myh6.fa
│       ├── Myh6.fa.renamed.fasta
│       ├── original_seqs
│       │   └── sequence.fasta
│       ├── RAG1.fa
│       ├── RAG1.fa.renamed.fasta
│       ├── RAG2.fa
│       ├── RAG2.fa.renamed.fasta
│       ├── rpS7.fa
│       └── rpS7.fa.renamed.fasta
├── LICENSE
├── parsimony
│   ├── automaticPipeline
│   ├── complete.newick
│   ├── complete.newick.pdf
│   ├── complete.newick.svg
│   ├── complete_newick_svg.png
│   ├── complete.out
│   ├── complete.run
│   ├── complete.tnt
│   ├── complete.tre
│   ├── STATSALL.RUN
│   └── treToNewick.R
└── README.md

9 directories, 148 files
```

# Parsimony analysis

## Phylogenetic analysis

### Dependencies

Please note that in order to run these scripts and reproduce the results you will need:

\begin{itemize}
\item TNT v.1.5 or higher for phylogenetic analysis, support statistics calculation, and tree production. Freely available at \url{http://www.lillo.org.ar/phylogeny/tnt/}. Please keep in mind that TNT starts numbering from 0, see below.
\item R v.3.3.1 or higher for tree format conversion. Freely available at \url{https://www.r-project.org/}.
\item (Optional) FigTree v.1.4.2 or higher for tree edition
\item (Optional) Inkscape 0.91 or higher for fine graphical edition of the trees.
\end{itemize}

### Fast run

On a UNIX system just run the \texttt{automaticPipeline} script. This can be achieved by running the command \texttt{bash automaticPipeline} or \texttt{bash ./automaticPipeline}. This script will return no visual output to the screen by itself but will show some internal TNT messages during bootstraping. These will disappear from the screen after running. The tree file format conversion is completely silent. After running you will have the output files described below. This alternative is designed for fast runs without going through each individual file.

Further details and comments are found in each script for those interested.

### Input files

These files must be run following these instructions. These are specific for command-line TNT:

\begin{itemize}
\item Navigate to the path where the files are located,\texttt{cd PATH} for Unix users.
\item Run TNT on the background with the command\texttt{tnt bground p complete.run}. Please note that the script was designed as a stand-alone tool so once called from TNT it will exit once the analysis has finished. See the file\texttt{complete.run} file for further comments and detailed explanation of each step in the phylogenetic analysis and construction of the output tree in .tre format.
\item If there are already output files these will be rewritten by TNT with the respective warning being recorded in the\texttt{complete.out} output file. Otherwise such file should not contain any warning.
\end{itemize}

\texttt{\textbf{complete.tnt}}

This file contains the data matrix in tnt format. The penultimate line of the file contains the instruction\texttt{collapse [;} in order to collapse branches supported by no apomorphies, contrary to the default in TNT that always presents a dichotomous result. 

\texttt{\textbf{complete.run}}

Script for carrying out the analysis, it contains the following steps as already documented inside the script:

\begin{itemize}
\item Tell TNT to use 1 Gb of RAM and store a large number of tree in memory.
\item Save all output to\texttt{complete.out}
\item Read the matrix\texttt{complete.tnt}
\item Initialize the output tree file\texttt{complete.tre}
\item Set outgroup to\texttt{Acestrorhynchus}
\item Inactivate uninformative characters 33 and 37
\item Use implicit enumeration for exact search
\item Plot the most-parsimonious tree (in this case, there was only one MPT) along with node numbers
\item Initialize tree annotation
\item Calculate CI and RI using the\texttt{STATSALL.RUN} script
\item Calculate bootstrap statistics
\item Calculate jackknife statistics
\item Save annotations to tree file in parenthetical notation
\item Plot MPT to log file
\item Close tree file
\item List synapomorphies for each clade. Please note that TNT starts numbering from 0, so you will need to edit the synapomorphies list by adding 1 to all node AND character numbers (e.g., Node 0 is actually node 1, and character 76 is actually character 77). 
\item Close log file
\item Close TNT
\end{itemize}

\texttt{\textbf{STATSALL.RUN}}

This script was developed by Peterson Lopes (Universidade de São Paulo) and is available in a number of sources over the internet. For reproducibility purporses I am linking to a thread in the TNT user group on google where such file can be found. Unfortunately there seems to be no official source for this script since the TNT wiki website became unavailable a couple years ago. The script can be found here \url{https://groups.google.com/d/msg/tnt-tree-analysis-using-new-technology/qPdCzlk_at8/YusQvlXCahwJ}. I claim NO AUTHORSHIP for this script. Please contact Peterson Lopes directly for further information.

### Output files

The script \texttt{complete.run} generates the following files as already noted. Tree edition was done in FigTree (\url{http://tree.bio.ed.ac.uk/software/figtree/}) and fine-edited with Inkscape.

\texttt{\textbf{complete.out}}

This file contains every output generated during analysis including graphic output such as trees and statistics. It will also contain any warning generated during analysis. Further information aside from graphic cladograms can be found here.

\texttt{\textbf{complete.tre}}

This file contains the output tree file to be converted to newick format in R (see below). Without any reformatting, this file can only be opened by TNT (and maybe Mesquite, did not test as it was unnecessary).

### Scripts for format conversion

An additional step is required before the \texttt{complete.tre} file can be edited in FigTree, given that TNT's output tree format differs from a newick standard format. An R script was designed for carrying out format conversion automatically.

In order to convert the file you need to load the function file with \texttt{source("treToNewick.R")} in the R console. Afterwards you are ready for converting between to newick format with the \texttt{treToNewick} function. Finally, you can open the .newick file in FigTree. Please keep in mind that the tree file has support values as annotations, so when opening FigTree you will be asked to name the labels (the defaul name labels is enough) so that you can activate them in the 'labels' section of FigTree.

\texttt{\textbf{treToNewick.R}}

This script contains the function for format conversion from TNT .tre to standard .newick. The function has three arguments:

\begin{itemize}
\item \texttt{file}: Character. The input file containing the .tre file as exported by TNT. Name this file including the extension (e.g., "example.tre").
\item \texttt{output}: Character. The name for the output file. Use the .newick extension for this file (e.g., "output.newick").
\item \texttt{subsetting}: Logical. Optional argument for fast file conversion. This argument subsets the tree in order to remove the TNT header and final lines. It should speed a bit the conversion for very large tree files. Defaults to TRUE.
\end{itemize}

### Final steps

After obtaining a .newick file you will be ready to edit the tree in FigTree in order to add annotations, change fonts, colors, and some other basic edition tasks. For a fully edited and good-looking tree it is suggested to save the tree in the vectorial svg format and then to further edit it with Inkscape. This way the cladogram published in the paper can be obtained.

## \texttt{complete.run}

\begin{scriptsize}
\begin{verbatim}
macro =;

/* Set max RAM to 1 Gb*/
mxram 1000;

/* Collapse all unsupported branches*/
collapse [;

/* 
Save all the output to the file 'complete.out'
It can be opened in any text editor
 */
log complete.out;

/*
Read the matrix 'complete.tnt'
*/
proc complete.tnt;

/*
Number of trees to be held in memory
*/
hold 1000000;

/*
Set random seed
*/
rseed 0;

/*
Open tree file in parenthetical notation
*/
tsave * complete.tre;

/*
Set the taxon Acestrorhynchus as the root
*/
outgroup Acestrorhynchus;

/*
Inactivate uninformative characters
*/
ccode ] 28 33 37;

/*
Given the number of taxa, carry out an exact search
with implicit enumeration
*/
ienum;

/*
Taxon names ON
*/
taxname =;

/*
Plot MPT with node numbers
*/
naked -;
tplot /;
naked =;

/*
Tree tags ON
*/
ttags =;

/*
Overall CI and RI
*/
run STATSALL.RUN 1;

/*
Bootstrap and Jackknife branch support values
*/
resample boot rep 10000;
resample jak rep 10000;

/*
Save tags to tree file in parenthetical notation
*/
save *;

/*
Plot consensus tree to log file
*/
tplot /;

/*
Close tree files
*/
tsave /;

/*
List synapomorphies common to all trees
*/
apo -;

/*
Close log file
*/
log /;

/*
Close TNT
*/
quit;
\end{verbatim}
\end{scriptsize}

## \texttt{treToNewick.R}

\begin{scriptsize}
\begin{verbatim}
# Script for carrying out format conversion from .tre to .newick
# There are two approaches, replacements with grep-like native R
# functions or using sed from a system call.
# Maybe it would be interesting to explore both approachs
# There is even an easier approach for the first search and is using subsetting
# However subsetting seems risky as perhaps my .tre files are formatted in a different way as 
# those from other analyses.

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
\end{verbatim}
\end{scriptsize}
    
## \texttt{complete.tnt}

In order to reconstruct the structure of the dataset, cut the character string (e.g., the line with \texttt{???? ... 111} just below \texttt{Hydrolycus\_sp.\_Fossil}) and paste it after the previous line that contains the taxon name (e.g., \texttt{Hydrolycus\_sp.\_Fossil} in this case). The line should then contain the structure: \texttt{taxon\_name} and  \texttt{character\_string} separated by a space (e.g., \texttt{Hydrolycus\_armatus 110210 ... 020}. The matrix includes the characters originally proposed by \citet{Toledo-Piza2000} and the new ones herein proposed.

\begin{scriptsize}
\begin{verbatim}
xread
83 9
Hydrolycus_MUN_16211	
????????????????????????????????????????????????????????????????????????111??010111
Hydrolycus_armatus	
11021000011111100011001011111110111111111011110001101111110111001100012111110011020
Hydrolycus_tatauaia	
11021000011111100011001011111110111111111011110001101111110111001100012111110011020
Hydrolycus_wallacei	
010111?0001111100012011011111110110111011011100001101111110111001100022100020000000
Hydrolycus_scomberoides	
01021001011111101112141011111110111111111011220001101111110111101101012111100010111
Rhaphiodon_vulpinus	
01101000001111?01212131011111110110111111011311111211011111112002110123102120100110
Cynodon_gibbus		
012010101000110112121211101011111101110121111200111011111111110111000210200-1000100
Cynodon_septenarius	
012010101000110112121211101011111101110121111200111011111111110111000???200-1000100
Acestrorhynchus		
00000??1000?0000000??1000000?00001000100000000000000000000000000?0000???-0000000-20
;
collapse [;
proc /;
\end{verbatim}
\end{scriptsize}

## \texttt{automaticPipeline.sh}

\begin{scriptsize}
\begin{verbatim}
#!/bin/bash

# run the TNT script 'complete.run' on the background. This will carry out the phylogenetic 
# analysis and draw the annotated cladogram. Please refer to the file 'complete.run' for 
# further details and comments. 
tnt bground p complete.run

# Load the 'treToNewick' function in R and convert the 'complete.tre' output file to the 
# newick format ('complete.newick'). Afterwards just open it in figtree or your preferred 
# program for tree edition.
Rscript -e 'source("treToNewick.R")' -e 'treToNewick("complete.tre", 
                                                     "complete.newick", 
                                                     subsetting = FALSE)'
\end{verbatim}
\end{scriptsize}

## Results

### Character definitions

Character definitions and character matrix. New characters are numbered from 73 to 83, characters 1 to 72 are from \citet{Toledo-Piza2000}.

\textbf{Character 73}---Dentary, symphyseal teeth, number: 0=two; 1=one; 2=six to seven 

\textbf{Character 74}---Dentary, leading canine, insertion plane: 0=labio-lingual; 1=commisuro-symphyseal; 2=straight, perpendicular to dentary horizontal plane.

\textbf{Character 75}---Dentary, leading canine, texture of lingual surface: 0=smoothly curve; 1=with a sharp and apically distinct cutting edge.

\textbf{Character 76}---Dentary, area posterior to tooth row, accessory teeth postertior to main tooth row: "-"=inapplicable; 0=absent; 1=extensive patch; 2=1-4 teeth in a restricted patch.

\textbf{Character 77}---Dentary-anguloarticular, coronoid process, presence: 0=absent; 1=present.

\textbf{Character 78}---Dentary, lateral sulcus on anterior portion below leading canine, presence: 0=absent; 1=present.

\textbf{Character 79}---Dentary, lateral depresion between leading canine and next hypertrophied canine, presence: 0=absent; 1=present.

\textbf{Character 80}---Dentary, leading canine, base of enameloid, labial surface, texture: 0=smooth, 1=present in the form of parallel/oblique ridges.

\textbf{Character 81}---Dentary, strong canines between leading canine and next hypertrophied canine number: "-"=inapplicable as dentary teeth are of comparable length; 0=1 canine; 1=2 canines.

\textbf{Character 82}---Dentary, anterior margin in lateral view, outline; 0=oblique, 1=straight, 2=round.

\textbf{Character 83}---Dentary, canine between leading canine and next hypertrophied canine, relative position: 0=midway between canines, 1=contiguous to posterior canine.

### List of apomorphies

List of synapomorphies for the most-parsimonious tree. Synapomorphies are listed as transformation series in the form 'Character: plesiomorphic state $\rightarrow$ apomorphic state'. Homoplastic characters are indicated by an asterisk after the transformation series. \textit{Hydrolycus scomberoides} sensu stricto represents the clade containing the extinct and extant specimens; \textit{Hydrolycus} \textit{sensu stricto} represents the composition herein proposed with the exclusion of \textit{"H." wallacei}.

\textit{Hydrolycus armatus}: 

No autapomorphies 

\textit{Hydrolycus tatauaia}: 

No autapomorphies 

\textit{Hydrolycus wallacei}: 

Char. 4: 0 $\rightarrow$ 1 

Char. 6: 0 $\rightarrow$ 1 

Char. 21: 1 $\rightarrow$ 0 

Char. 81: 1 $\rightarrow$ 0 

\textit{Rhaphiodon vulpinus}: 

Char. 3: 0 $\rightarrow$ 1 

Char. 18: 0 $\rightarrow$ 2 

Char. 45: 1 $\rightarrow$ 3 

Char. 47: 0 $\rightarrow$ 1 

Char. 48: 0 $\rightarrow$ 1 

Char. 49: 0 $\rightarrow$ 1 

Char. 51: 1 $\rightarrow$ 2 

Char. 52: 0 $\rightarrow$ 1 

Char. 54: 1 $\rightarrow$ 0 

Char. 59: 0 $\rightarrow$ 1 

Char. 62: 1 $\rightarrow$ 2 

Char. 65: 1 $\rightarrow$ 2 

Char. 67: 0 $\rightarrow$ 1 

Char. 69: 0 $\rightarrow$ 1 

Char. 71: 2 $\rightarrow$ 3 

Char. 78: 0 $\rightarrow$ 1 

\textit{Cynodon gibbus}: 

No autapomorphies 

\textit{Cynodon septenarius}: 

No autapomorphies 

\textit{Acestrorhynchus}: 

No autapomorphies 

Node \textit{H. scomberoides} (including \textit{H. scomberoides} MUN 16211): 

Char. 83: 0 $\rightarrow$ 1 

\textit{Hydrolycus} (exclusive of \textit{H. wallacei}): 

Char. 4: 0 $\rightarrow$ 2 

Char. 10: 0 $\rightarrow$ 1 

Char. 35: 0 $\rightarrow$ 1 

Char. 70: 2 $\rightarrow$ 1 

Char. 73: 0 $\rightarrow$ 1 

Char. 79: 0 $\rightarrow$ 1 

\textit{Rhaphiodon} + \textit{Hydrolycus} (exclusive of \textit{H. wallacei}): 

Char. 39: 0 $\rightarrow$ 1 

Char. 46: 0 $\rightarrow$ 1 

Char. 75: 0 $\rightarrow$ 1 

Char. 82: 0 $\rightarrow$ 1 

\textit{Hydrolycus} (including \textit{H. wallacei}) + \textit{Rhaphiodon}: 

Char. 11: 0 $\rightarrow$ 1 

Char. 15: 0 $\rightarrow$ 1 

Char. 26: 0 $\rightarrow$ 1 

Char. 28: 0 $\rightarrow$ 1 

Cynodontidae: 

No synapomorphies 

\textit{H. armatus} + \textit{H. tatauaia}: 

Char. 1: 0 $\rightarrow$ 1 

Char. 20: 2 $\rightarrow$ 1 

Char. 21: 1 $\rightarrow$ 0 

Char. 80: 0 $\rightarrow$ 1 

Char. 81: 1 $\rightarrow$ 0 

Char. 82: 1 $\rightarrow$ 2 

\textit{Cynodon}: 

Char. 3: 0 $\rightarrow$ 2 

Char. 9: 0 $\rightarrow$ 1 

Char. 16: 0 $\rightarrow$ 1 

Char. 18: 0 $\rightarrow$ 2 

Char. 22: 1 $\rightarrow$ 2 

Char. 24: 0 $\rightarrow$ 1 

Char. 32: 0 $\rightarrow$ 1 

Char. 42: 0 $\rightarrow$ 1 

Char. 46: 0 $\rightarrow$ 2 

Char. 49: 0 $\rightarrow$ 1 

Char. 59: 0 $\rightarrow$ 1 

Char. 64: 0 $\rightarrow$ 1 

Char. 77: 0 $\rightarrow$ 1 

## Characters and dentary anatomy in representatives of the Cynodontidae

\begin{figure}[h!]
  \centering
  \includegraphics[width=\textwidth]{../figures/recentPlates/armatus_scomberoides.pdf}
	\caption{Dentary bones of all species of *Hydrolycus* and *Rhaphiodon*. *Hydrolycus armatus* in A. anterior, C. occlusal, and E. lateral views. G. detail of the posterior portion of the dentary showing the patch of small teeth. *Hydrolycus scomberoides* in B. anterior, D. occlusal, and F. lateral views. H. showing a slightly oblique view where the single symphysial tooth is more evident. Character states are shown as character:ctaracter-state in all cases}
  \label{fig:armatusEtal}
\end{figure}

\begin{figure}[h!]
  \centering
  \includegraphics[width=\textwidth]{../figures/recentPlates/tatauaia-wallacei.pdf}
  \caption{Dentary bones of all species of *Hydrolycus* and *Rhaphiodon*. *Hydrolycus tatauaia* in A. anterior, D. lateral, and H. occlusal views. *Hydrolycus wallacei* in B. anterior, E. lateral, and G. occlusal views. *Rhaphiodon vulpinus* in C. anterior, and F. lateral views. Character states are shown as character:ctaracter-state in all instances}
  \label{fig:wallaceiEtal}
\end{figure}

# Bayesian analysis

## Taxon sampling

Selection of sequences for *Acestrorhynchus* follows \citet{Pretti2009} that recovered *A. falcirostris* and *A. microlepis* as the successive most basal species in the genus.

## Marker selection

A first batch of sequences was downloaded using the string:

```{}
"Cynodon gibbus"[Organism] OR 
  "Hydrolycus"[Organism] OR 
  "Rhaphiodon"[Organism] OR 
  "Acestrorhynchus microlepis"[Organism] OR 
  "Acestrorhynchus falcirostris"[Organism] AND animals[filter]
```

Next, UGENE was used in order to pick sequences per marker. Given the small original amount of sequences, a survey of representativeness per marker was carried out by picking markers in the sequence title. The following structure was found and allowed to pick a total of nine markers (number of sequences per species between parentheses):

\begin{scriptsize}
\begin{verbatim}
C. gibbus                     16S (1),                              cytb (1),          Myh6 (1), NA (2), RAG1 (1), RAG2 (1)
H. armatus                             EGR1 (1), EGR2B (1), EGR3 (1), NA (2),                            RAG1 (1),                   RH (1)
H. scomberoides  mitogen.(2), 16S (3), 18S (1),           COI (10), cytb (1),          Myh6 (1),         RAG1 (1), RAG2 (2),         sina (1)
R. vulpinus                   16S (4), 18S (1), ATP6 (1), COI (15), cytb (1), fkh (1), Myh6 (1), NA (2), RAG1 (1), RAG2 (1), rpS7 (1)
A. falcirostris               16S (2),          ATP8 (2), COI (6),                                                           rpS7 (2)
A. microlepis                 16S (4), 18S (2), ATP6-8 (2),                                                                  rpS7 (2)

markers selected: 16S, 18S, ATP6, COI, cytb, Myh6, RAG1, RAG2, rsP7, and the mytogenome for scomberoides in all mitochondrial cases!
\end{verbatim}
\end{scriptsize}

A script in R was used for renamig the sequences so that they started with the species name, then the marker name, and finally the accession number.


```bash
Rscript scripts/renameAlignments.R
```

## Sequence manual selection

A single sequence per species per marker was chosen whenever more than one was present. The following list records all the modifications needed:

### _CytB_

- `Hydrolycus_scomberoides_CytB_NC_015813.1` removed as the other mitogenomic sequence was identical.
- `Hydrolycus_scomberoides_CytB_HQ289558.1` removed as the mitogenome already includes the sequence of CytB

### _COI_

- `Hydrolycus_scomberoides_COI_NC_015813.1` removed in coordination with the choice in CytB.
- All sequences for Acestrorhynchus falcirostris were identical. Picking the first one `Acestrorhynchus_falcirostris_COI_MG953597.1`
- From the ten longest sequences of Rhaphiodon vulpinus, all were identical. Picking the first one `Rhaphiodon_vulpinus_COI_GU701527.1`

### _ATPase6-8_

- Picking `Acestrorhynchus_falcirostris_ATPase6-8_FJ468304.1` as it was the longest of both for this species.
- Removing `Hydrolycus_scomberoides_ATPase6-8_NC_015813.1` for the same reason as in other mitochondrial markers.
- Picking `Acestrorhynchus_microlepis_ATPase6-8_FJ468311.1` as it was the longest of both for this species.

### _rpS7_

- Picking `Acestrorhynchus_falcirostris_rpS7_FJ409851.1` as it was the longest for that species.
- Removing `Hydrolycus_scomberoides_rpS7_NC_015813.1` for the same reason as in other mitochondrial markers.
- Picking `Acestrorhynchus_microlepis_rpS7_FJ409859.1` as it was the longest for that species.
- Renaming `Rhaphiodon_sp._rpS7_FJ409867.1` to `Rhaphiodon_vulpinus_rpS7_FJ409867.1` as there is only one species of _Rhaphiodon_.

### _RAG2_

- Picking `Hydrolycus_scomberoides_RAG2_AY804088.1` as it was the longest for that species.

### _16S_

- Removing `Hydrolycus_scomberoides_16S_NC_015813.1` as above.
- Removing all other _H. scommberoides_.
- Picking `Acestrorhynchus_microlepis_16S_FJ362546.1` as it is the longest sequence.
- Picking `Rhaphiodon_vulpinus_16S_HQ171303.1` as it is the longest sequence.
- Picking `Acestrorhynchus_falcirostris_16S_FJ362540.1` as it is the longest sequence.

### _18S_

- Picking `Acestrorhynchus_falcirostris_18S_FJ362540.1` as it is the longest sequence.
- Removing `Hydrolycus_scomberoides_18S_NC_015813.1` as above.
- Removing all other H. scomberoides except the mitogenome.
- Picking `Acestrorhynchus_microlepis_18S_FJ362546.1` as it is the longest sequence.
- Picking `Rhaphiodon_vulpinus_18S_HQ171303.1` as it is the longest sequence.

## Sequence alignment

Sequences were aligned with mafft in a server due to extensive use of memory (spent ca. 3-4min running):


```bash
#!/bin/bash
# send email indicating that everything started running
Rscript beginExec.R
# iterate over the files in order to run mafft on them
# and name the output files accordingly
for i in `ls *.fasta`; do
  mafft --maxiterate 1000 --thread 24 --localpair $i > $i.aligned.fasta
done
# send email indicating that everything finished
Rscript finishExec.R
```

Manual trimming of alignments was carried out in order to preserve as most as possible from the alignment found with mafft. The steps below were carried out in order to reach the per-marker alingment that will be subject to concatenation downward the analysis.

### _COI_

- Positions 16548--6124 removed as flanking region
- Positions 5618--1 removed as flanking region

### _APTase6-8_

- Positions 16548--8753 removed as flanking region
- Positions 7969--1 removed as flanking region

### _16S_

- Positions 16560--2601 removed as flanking region.
- Positions 2012--1 removed as flanking region.

### _CytB_

- Positions 16548--15428 removed as flanking region.
- Positions 14590--1 removed as flanking region.

### _RAG2_

- Positions 1224--1110 removed as flanking region.
- Positions 96--1 removed as flanking region.

### _RAG1_

- Positions 1500--1359 removed as flanking region.
- Positions 93--1 removed as flanking region.

### _Myh6_

- Positions 752--744 removed as flanking region.

### _rpS7_

- This marker disintegrated during alignment, removing altogether

### _16S_

- Positions 16560--2601 removed as flanking regions.
- Positions 2012--1 removed as flanking regions.

## Accession numbers

Finally, the following accession numbers were used for ensambling each taxon:


```bash
cd ../phylo/bayesian/sequences/alignedSeqs/
grep ">" *.trimmed.fasta | sed 's/.fa.renamed.fasta.aligned.fasta.trimmed.fasta:>/ /g'
cd ../../../../supplementary
```

```
16S Acestrorhynchus_falcirostris_16S_FJ362540.1
16S Cynodon_gibbus_16S_HQ171241.1
16S Hydrolycus_scomberoides_16S_AP011989.1
16S Acestrorhynchus_microlepis_16S_FJ362546.1
16S Rhaphiodon_vulpinus_16S_HQ171303.1
18S Acestrorhynchus_microlepis_18S_FJ944765.1
18S Cynodon_gibbus_18S_AY523598.1
18S Hydrolycus_armatus_18S_AY523597.1
18S Hydrolycus_scomberoides_18S_AP011989.1
18S Rhaphiodon_vulpinus_18S_FJ944807.1
ATPase6-8 Acestrorhynchus_falcirostris_ATPase6-8_FJ468304.1
ATPase6-8 Hydrolycus_scomberoides_ATPase6-8_AP011989.1
ATPase6-8 Acestrorhynchus_microlepis_ATPase6-8_FJ468311.1
ATPase6-8 Rhaphiodon_vulpinus_ATPase6-8_FJ468317.1
COI Acestrorhynchus_falcirostris_COI_MG953597.1
COI Hydrolycus_scomberoides_COI_AP011989.1
COI Rhaphiodon_vulpinus_COI_GU701527.1
CytB Cynodon_gibbus_CytB_HQ289532.1
CytB Hydrolycus_scomberoides_CytB_AP011989.1
CytB Rhaphiodon_vulpinus_CytB_HQ289592.1
Myh6 Cynodon_gibbus_Myh6_HQ288951.1
Myh6 Hydrolycus_scomberoides_Myh6_HQ288979.1
Myh6 Rhaphiodon_vulpinus_Myh6_HQ289013.1
RAG1 Cynodon_gibbus_RAG1_HQ289148.1
RAG1 Hydrolycus_armatus_RAG1_JX470045.1
RAG1 Hydrolycus_scomberoides_RAG1_HQ289176.1
RAG1 Rhaphiodon_vulpinus_RAG1_HQ289205.1
RAG2 Cynodon_gibbus_RAG2_HQ289339.1
RAG2 Hydrolycus_scomberoides_RAG2_AY804088.1
RAG2 Rhaphiodon_vulpinus_RAG2_HQ289399.1
```

\begin{longtable}[c]{llcc}
\caption{Accession numbers for the eight molecular markers used in the bayesian phylogenetic analyses.}
\label{tab:accnums}\\
\multicolumn{1}{c}{\textbf{Genus}} & \multicolumn{1}{c}{\textbf{Species}} & \textbf{Marker} & \textbf{Accession number} \\
\endfirsthead
%
\endhead
%
\textit{Acestrorhynchus} & \textit{falcirostris} & \textit{16S} & FJ362540.1 \\
\textit{Acestrorhynchus} & \textit{falcirostris} & \textit{ATPase6-8} & FJ468304.1 \\
\textit{Acestrorhynchus} & \textit{falcirostris} & \textit{COI} & MG953597.1 \\
\textit{Acestrorhynchus} & \textit{microlepis} & \textit{16S} & FJ362546.1 \\
\textit{Acestrorhynchus} & \textit{microlepis} & \textit{18S} & FJ944765.1 \\
\textit{Acestrorhynchus} & \textit{microlepis} & \textit{ATPase6-8} & FJ468311.1 \\
\textit{Cynodon} & \textit{gibbus} & \textit{16S} & HQ171241.1 \\
\textit{Cynodon} & \textit{gibbus} & \textit{18S} & AY523598.1 \\
\textit{Cynodon} & \textit{gibbus} & \textit{CytB} & HQ289532.1 \\
\textit{Cynodon} & \textit{gibbus} & \textit{Myh6} & HQ288951.1 \\
\textit{Cynodon} & \textit{gibbus} & \textit{RAG1} & HQ289148.1 \\
\textit{Cynodon} & \textit{gibbus} & \textit{RAG2} & HQ289339.1 \\
\textit{Hydrolycus} & \textit{armatus} & \textit{18S} & AY523597.1 \\
\textit{Hydrolycus} & \textit{armatus} & \textit{RAG1} & JX470045.1 \\
\textit{Hydrolycus} & \textit{scomberoides} & \textit{16S} & AP011989.1 \\
\textit{Hydrolycus} & \textit{scomberoides} & \textit{18S} & AP011989.1 \\
\textit{Hydrolycus} & \textit{scomberoides} & \textit{ATPase6-8} & AP011989.1 \\
\textit{Hydrolycus} & \textit{scomberoides} & \textit{COI} & AP011989.1 \\
\textit{Hydrolycus} & \textit{scomberoides} & \textit{CytB} & AP011989.1 \\
\textit{Hydrolycus} & \textit{scomberoides} & \textit{Myh6} & HQ288979.1 \\
\textit{Hydrolycus} & \textit{scomberoides} & \textit{RAG1} & HQ289176.1 \\
\textit{Hydrolycus} & \textit{scomberoides} & \textit{RAG2} & AY804088.1 \\
\textit{Rhaphiodon} & \textit{vulpinus} & \textit{16S} & HQ171303.1 \\
\textit{Rhaphiodon} & \textit{vulpinus} & \textit{18S} & FJ944807.1 \\
\textit{Rhaphiodon} & \textit{vulpinus} & \textit{ATPase6-8} & FJ468317.1 \\
\textit{Rhaphiodon} & \textit{vulpinus} & \textit{COI} & GU701527.1 \\
\textit{Rhaphiodon} & \textit{vulpinus} & \textit{CytB} & HQ289592.1 \\
\textit{Rhaphiodon} & \textit{vulpinus} & \textit{Myh6} & HQ289013.1 \\
\textit{Rhaphiodon} & \textit{vulpinus} & \textit{RAG1} & HQ289205.1 \\
\textit{Rhaphiodon} & \textit{vulpinus} & \textit{RAG2} & HQ289399.1
\end{longtable}

## Substitution models

Before finding substitution models, it was necessary to rename the sequences so that jModelTest won't complain by using the script `taxNamesFasta.R`


```bash
Rscript scripts/taxNamesFasta.R
```

The following script was used for finding the substitution models


```bash
#!/bin/bash

for i in $(ls *.trimmed.fasta)
do
    echo "Running jModelTest2 on $i\n"
    java -jar ~/programs/jmodeltest2/dist/jModelTest.jar -BIC -d $i 
	                                                     -f -i -g 4 
														 -s 3 -t ML 
														 -tr 4 -o $i`date +"%H.%M_%d_%m_%Y"`'.out'
done
```


The following models were chosen:


```bash
for i in `ls ../phylo/bayesian/sequences/alignedSeqs/substModels/*.out`; do
  echo "$i" | cut -d '/' -f 4
  tail -n 1 $i | awk '{print $2}'
  printf "\n"
done
```

```
sequences
SYM+I

sequences
K80

sequences
HKY+I

sequences
HKY+G

sequences
HKY+I

sequences
K80

sequences
K80

sequences
K80
```

Now the matrices need to be converted to nexus in order to concatenate. In this step it is crucial to include a morphological fasta file with all missing data in order to guarantee that both molecular and morphological matrices can be concatenated:


```bash
>Hydrolycus_MUN_16211
---------------------------------------------------------------------------------
>Hydrolycus_armatus
---------------------------------------------------------------------------------
>Hydrolycus_tatauaia
---------------------------------------------------------------------------------
>Hydrolycus_wallacei
---------------------------------------------------------------------------------
>Hydrolycus_scomberoides
---------------------------------------------------------------------------------
>Rhaphiodon_vulpinus
---------------------------------------------------------------------------------
>Cynodon_gibbus
---------------------------------------------------------------------------------
>Cynodon_septenarius
---------------------------------------------------------------------------------
>Acestrorhynchus_falcirostris
---------------------------------------------------------------------------------
>Acestrorhynchus_microlepis
---------------------------------------------------------------------------------
```

These matrices can then be renamed sharing taxon names across partitions with the script `createNexusFiles.R`:


```bash
Rscript scripts/createNexusFiles.R
```

Then we need to concatenate these nexus files for the only-molecular analysis and then add the morphological partition for the total evidence analysis. The script `concatenateMatricesMolonly.R` will call the `concatNexus.R` function and produce a molecular-only concatenated matrix along with endpoints for partitions. There is another script named `concatenateMatricesMolmorph.R` for the total evidence analysis.


```bash
Rscript scripts/concatenateMatricesMolonly.R
```

Checking matrix integrity for the Molecular-only matrix:


```bash
mb ../phylo/bayesian/sequences/alignedSeqs/substModels/nexus/concatenatedMolonly.nexus > outmbConcat
cat outmbConcat
```

```

                            MrBayes v3.2.6 x64

                      (Bayesian Analysis of Phylogeny)

              Distributed under the GNU General Public License

               Type "help" or "help <command>" for information
                     on the commands that are available.

                   Type "about" for authorship and general
                       information about the program.



   Executing file "../phylo/bayesian/sequences/alignedSeqs/substModels/nexus/concatenatedMolonly.nexus"
   UNIX line termination
   Longest line length = 1304
   Parsing file
   Expecting NEXUS formatted file
   Reading data block
      Allocated taxon set
      Allocated matrix
      Defining new matrix with 10 taxa and 6061 characters
      Data is Dna
      Missing data coded as ?
      Gaps coded as -
      Data matrix is interleaved
      Taxon  1 -> Acestrorhynchus_falcirostris
      Taxon  2 -> Cynodon_gibbus
      Taxon  3 -> Hydrolycus_scomberoides
      Taxon  4 -> Acestrorhynchus_microlepis
      Taxon  5 -> Rhaphiodon_vulpinus
      Taxon  6 -> Hydrolycus_armatus
      Taxon  7 -> Hydrolycus_MUN_16211
      Taxon  8 -> Hydrolycus_tatauaia
      Taxon  9 -> Hydrolycus_wallacei
      Taxon 10 -> Cynodon_septenarius
      Successfully read matrix
      Setting default partition (does not divide up characters)
      Setting model defaults
      Seed (for generating default start values) = 1616085562
      Setting output file names to "../phylo/bayesian/sequences/alignedSeqs/substModels/nexus/concatenatedMolonly.nexus.run<i>.<p|t>"
   Exiting data block
   Reached end of file

   Tasks completed, exiting program because mode is noninteractive
   To return control to the command line after completion of file processing, 
   set mode to interactive with 'mb -i <filename>' (i is for interactive)
   or use 'set mode=interactive'
```

Checking matrix integrity for the total-evidence matrix:


```bash
mb ../phylo/bayesian/sequences/alignedSeqs/substModels/nexus/concatenatedMolmorph.nexus > outmbConcat
cat outmbConcat
```

```

                            MrBayes v3.2.6 x64

                      (Bayesian Analysis of Phylogeny)

              Distributed under the GNU General Public License

               Type "help" or "help <command>" for information
                     on the commands that are available.

                   Type "about" for authorship and general
                       information about the program.



   Executing file "../phylo/bayesian/sequences/alignedSeqs/substModels/nexus/concatenatedMolmorph.nexus"
   UNIX line termination
   Longest line length = 1304
   Parsing file
   Expecting NEXUS formatted file
   Reading data block
      Allocated taxon set
      Allocated matrix
      Defining new matrix with 10 taxa and 6141 characters
      Data is Mixed
         Data for partition 1 is Dna
         Data for partition 2 is Standard
      There are a total of 2 default data divisions
      Missing data coded as ?
      Gaps coded as -
      Data matrix is interleaved
      Taxon  1 -> Acestrorhynchus_falcirostris
      Taxon  2 -> Cynodon_gibbus
      Taxon  3 -> Hydrolycus_scomberoides
      Taxon  4 -> Acestrorhynchus_microlepis
      Taxon  5 -> Rhaphiodon_vulpinus
      Taxon  6 -> Hydrolycus_armatus
      Taxon  7 -> Hydrolycus_MUN_16211
      Taxon  8 -> Hydrolycus_tatauaia
      Taxon  9 -> Hydrolycus_wallacei
      Taxon 10 -> Cynodon_septenarius
      Successfully read matrix
      Setting default partition, dividing characters into 2 parts
      Setting model defaults
      Seed (for generating default start values) = 1616085562
      Setting output file names to "../phylo/bayesian/sequences/alignedSeqs/substModels/nexus/concatenatedMolmorph.nexus.run<i>.<p|t>"
   Exiting data block
   Reached end of file

   Tasks completed, exiting program because mode is noninteractive
   To return control to the command line after completion of file processing, 
   set mode to interactive with 'mb -i <filename>' (i is for interactive)
   or use 'set mode=interactive'
```

## `MrBayes` script

For the molecular-only analysis (Figure \ref{fig:molOnlyBayes}) we have generated the following script:

\begin{figure}
  \centering
  \includegraphics[width=\textwidth]{figures/concatenatedMolonly.nexus.con.tre}
  \caption{Molecular-only bayesian inference tree. Nodal values are posterior probabilities. Scale is branch length.}
  \label{fig:molOnlyBayes}
\end{figure}


```bash
begin mrbayes;
[Script documentation carried out using comments]

[log the analysis]
log start filename = cynoMolonly.log;
[read the matrix concatenatedMolonly.nexus]
execute concatenatedMolonly.nexus;

[close analysis at end]
set autoclose = yes;
[set Acestrorhynchus_microlepis as outgroup]
outgroup Acestrorhynchus_microlepis;
[This command shows the status of all the taxa, according to the documentation]
taxastat;

[definition of individual partitions per marker]
charset 16S = 1-588;
charset 18S = 589-915;
charset ATPase6_8 = 916-1698;
charset COI = 1699-2203;
charset CytB = 2204-3040;
charset Myh6 = 3041-3783;
charset RAG1 = 3784-5048;
charset RAG2 = 5049-6061;

[definition of combined dataset]
partition combined = 8: 16S, 18S, ATPase6_8, COI, CytB, Myh6, RAG1, RAG2;

[specification of substitution models]
set partition = combined;
lset applyto = (1) nst = 6 rates = propinv; [SYM+I]
lset applyto = (2) nst = 2; [K80]
lset applyto = (3) nst = 2 rates = propinv; [HKY+I]
lset applyto = (4) nst = 2 rates = gamma; [HKY+G]
lset applyto = (5) nst = 2 rates = propinv; [HKY+I]
lset applyto = (6) nst = 2; [K80]
lset applyto = (7) nst = 2; [K80]
lset applyto = (8) nst = 2; [K80]

[unlink parameters across partitions]
unlink shape = (all) pinvar = (all) statefreq = (all) revmat = (all) tratio = (all);

[allow separate gamma parameters for each partition]
prset applyto=(all) ratepr=variable;

[turn off taxa for which there are no molecular data]
delete Hydrolycus_MUN_16211 Hydrolycus_wallacei Cynodon_septenarius Hydrolycus_tatauaia;

[show taxa]
taxastat;

[show the model just specified for each partition]
showmodel;

[set up the MCMC, with this setting the analysis will need not less than 16 threads]
mcmcp nruns = 2 ngen = 4000000 nchains = 8 samplefreq = 4000 printfreq = 100;
[run the MCMC]
mcmc;

[summarize the posterior trees]
sumt nruns = 2 relburnin = yes burninfrac = 0.25;
plot;

[summarize parameter posteriors]
sump;

log stop;
end;
```

Now, for the total evidence analysis (Figure \ref{fig:molMorphBayes}), the following script was used:

\begin{figure}
  \centering
  \includegraphics[width=\textwidth]{figures/concatenatedMolmorph.nexus.con.tre}
  \caption{Combined analysis using both the morphological and molecular datasets bayesian inference. Nodal values are posterior probabilities. Scale is branch length.}
  \label{fig:molMorphBayes}
\end{figure}


```bash
begin mrbayes;
[Script documentation carried out using comments]

[log the analysis]
log start filename = cynoMolmorph.log;
[read the matrix concatenatedMolmorph.nexus]
execute concatenatedMolmorph.nexus;

[close analysis at end]
set autoclose = yes;
[set Acestrorhynchus_microlepis as outgroup]
outgroup Acestrorhynchus_microlepis;
[This command shows the status of all the taxa, according to the documentation]
taxastat;

[definition of individual partitions per marker]
charset 16S = 1-588;
charset 18S = 589-915;
charset ATPase6_8 = 916-1698;
charset COI = 1699-2203;
charset CytB = 2204-3040;
charset Myh6 = 3041-3783;
charset RAG1 = 3784-5048;
charset RAG2 = 5049-6061;
charset morph = 6062-6141;

[definition of combined dataset]
partition combined = 9: 16S, 18S, ATPase6_8, COI, CytB, Myh6, RAG1, RAG2,  morph;

[specification of substitution models]
set partition = combined;
lset applyto = (1) nst = 6 rates = propinv; [SYM+I]
lset applyto = (2) nst = 2; [K80]
lset applyto = (3) nst = 2 rates = propinv; [HKY+I]
lset applyto = (4) nst = 2 rates = gamma; [HKY+G]
lset applyto = (5) nst = 2 rates = propinv; [HKY+I]
lset applyto = (6) nst = 2; [K80]
lset applyto = (7) nst = 2; [K80]
lset applyto = (8) nst = 2; [K80]
lset applyto = (9) coding = variable; [Lewis2001 model]

[unlink parameters across partitions]
unlink shape = (all) pinvar = (all) statefreq = (all) revmat = (all) tratio = (all);

[allow separate gamma parameters for each partition]
prset applyto=(all) ratepr=variable;

[show the model just specified for each partition]
showmodel;

[set up the MCMC, with this setting the analysis will need not less than 16 threads]
mcmcp nruns = 2 ngen = 4000000 nchains = 8 samplefreq = 4000 printfreq = 100;
[run the MCMC]
mcmc;

[summarize the posterior trees]
sumt nruns = 2 relburnin = yes burninfrac = 0.25;
plot;

[summarize parameter posteriors]
sump;

log stop;
end;
```

### Analysis output


```bash
      Analysis completed in 42 hours 11 mins 7 seconds
      Analysis used 35524.09 seconds of CPU time on processor 0
      Likelihood of best state for "cold" chain of run 1 was -14285.77
      Likelihood of best state for "cold" chain of run 2 was -14288.60

      Acceptance rates for the moves in the "cold" chain of run 1:
         With prob.   (last 100)   chain accepted proposals by move
            29.8 %     ( 29 %)     Dirichlet(Tratio{2})
            25.8 %     ( 19 %)     Dirichlet(Tratio{3})
            28.0 %     ( 29 %)     Dirichlet(Tratio{4})
            25.9 %     ( 28 %)     Dirichlet(Tratio{5})
            35.8 %     ( 27 %)     Dirichlet(Tratio{6})
            32.1 %     ( 20 %)     Dirichlet(Tratio{7})
            30.5 %     ( 32 %)     Dirichlet(Tratio{8})
            32.4 %     ( 25 %)     Dirichlet(Revmat{1})
            46.1 %     ( 21 %)     Slider(Revmat{1})
            26.2 %     ( 27 %)     Dirichlet(Pi{1})
            27.1 %     ( 26 %)     Slider(Pi{1})
            28.0 %     ( 27 %)     Dirichlet(Pi{2})
            28.1 %     ( 29 %)     Slider(Pi{2})
            24.6 %     ( 23 %)     Dirichlet(Pi{3})
            26.1 %     ( 27 %)     Slider(Pi{3})
            26.8 %     ( 24 %)     Dirichlet(Pi{4})
            27.3 %     ( 22 %)     Slider(Pi{4})
            25.6 %     ( 26 %)     Dirichlet(Pi{5})
            26.3 %     ( 26 %)     Slider(Pi{5})
            26.4 %     ( 34 %)     Dirichlet(Pi{6})
            26.9 %     ( 29 %)     Slider(Pi{6})
            25.0 %     ( 26 %)     Dirichlet(Pi{7})
            26.2 %     ( 24 %)     Slider(Pi{7})
            25.6 %     ( 23 %)     Dirichlet(Pi{8})
            26.2 %     ( 26 %)     Slider(Pi{8})
            29.2 %     ( 32 %)     Multiplier(Alpha{4})
            32.1 %     ( 24 %)     Slider(Pinvar{1})
            28.4 %     ( 31 %)     Slider(Pinvar{3})
            27.7 %     ( 29 %)     Slider(Pinvar{5})
            20.3 %     ( 26 %)     Dirichlet(Ratemultiplier{all})
            38.2 %     ( 26 %)     Slider(Ratemultiplier{all})
             2.0 %     (  6 %)     ExtSPR(Tau{all},V{all})
             2.6 %     (  3 %)     ExtTBR(Tau{all},V{all})
             4.2 %     (  7 %)     NNI(Tau{all},V{all})
             0.5 %     (  0 %)     ParsSPR(Tau{all},V{all})
            25.9 %     ( 26 %)     Multiplier(V{all})
            21.7 %     ( 28 %)     Nodeslider(V{all})
            24.8 %     ( 30 %)     TLMultiplier(V{all})

      Acceptance rates for the moves in the "cold" chain of run 2:
         With prob.   (last 100)   chain accepted proposals by move
            29.6 %     ( 30 %)     Dirichlet(Tratio{2})
            25.6 %     ( 25 %)     Dirichlet(Tratio{3})
            28.0 %     ( 17 %)     Dirichlet(Tratio{4})
            25.9 %     ( 22 %)     Dirichlet(Tratio{5})
            35.7 %     ( 33 %)     Dirichlet(Tratio{6})
            32.0 %     ( 28 %)     Dirichlet(Tratio{7})
            30.3 %     ( 23 %)     Dirichlet(Tratio{8})
            32.6 %     ( 22 %)     Dirichlet(Revmat{1})
            46.2 %     ( 26 %)     Slider(Revmat{1})
            26.4 %     ( 25 %)     Dirichlet(Pi{1})
            27.2 %     ( 25 %)     Slider(Pi{1})
            28.2 %     ( 25 %)     Dirichlet(Pi{2})
            28.1 %     ( 30 %)     Slider(Pi{2})
            24.9 %     ( 33 %)     Dirichlet(Pi{3})
            25.9 %     ( 25 %)     Slider(Pi{3})
            26.8 %     ( 29 %)     Dirichlet(Pi{4})
            27.2 %     ( 32 %)     Slider(Pi{4})
            25.7 %     ( 29 %)     Dirichlet(Pi{5})
            26.2 %     ( 21 %)     Slider(Pi{5})
            25.9 %     ( 31 %)     Dirichlet(Pi{6})
            27.0 %     ( 23 %)     Slider(Pi{6})
            25.0 %     ( 26 %)     Dirichlet(Pi{7})
            26.2 %     ( 25 %)     Slider(Pi{7})
            25.9 %     ( 27 %)     Dirichlet(Pi{8})
            26.2 %     ( 25 %)     Slider(Pi{8})
            29.3 %     ( 21 %)     Multiplier(Alpha{4})
            31.7 %     ( 24 %)     Slider(Pinvar{1})
            28.4 %     ( 21 %)     Slider(Pinvar{3})
            28.0 %     ( 19 %)     Slider(Pinvar{5})
            20.4 %     ( 25 %)     Dirichlet(Ratemultiplier{all})
            37.7 %     ( 28 %)     Slider(Ratemultiplier{all})
             2.1 %     (  4 %)     ExtSPR(Tau{all},V{all})
             2.6 %     (  4 %)     ExtTBR(Tau{all},V{all})
             4.2 %     (  5 %)     NNI(Tau{all},V{all})
             0.5 %     (  0 %)     ParsSPR(Tau{all},V{all})
            25.9 %     ( 22 %)     Multiplier(V{all})
            21.7 %     ( 19 %)     Nodeslider(V{all})
            25.0 %     ( 23 %)     TLMultiplier(V{all})

      Chain swap information for run 1:

                   1       2       3       4       5       6       7       8 
           ------------------------------------------------------------------
         1 |            0.66    0.40    0.23    0.12    0.06    0.03    0.01 
         2 |  143165            0.69    0.44    0.26    0.14    0.07    0.03 
         3 |  142484  142704            0.70    0.46    0.28    0.16    0.08 
         4 |  143136  143468  142909            0.72    0.48    0.29    0.16 
         5 |  142809  142901  142856  143269            0.73    0.48    0.29 
         6 |  142358  142914  142276  143118  142789            0.72    0.47 
         7 |  142675  142655  142121  143133  142706  143112            0.71 
         8 |  142653  143186  142519  143052  143314  142914  142804         

      Chain swap information for run 2:

                   1       2       3       4       5       6       7       8 
           ------------------------------------------------------------------
         1 |            0.67    0.41    0.23    0.12    0.06    0.03    0.01 
         2 |  143073            0.69    0.44    0.26    0.14    0.07    0.03 
         3 |  143275  142795            0.71    0.46    0.28    0.16    0.08 
         4 |  143055  142555  143272            0.72    0.48    0.29    0.17 
         5 |  142174  142840  142820  142901            0.73    0.49    0.31 
         6 |  142360  142895  143363  143198  142553            0.74    0.51 
         7 |  142850  143027  142757  143951  142824  142915            0.74 
         8 |  142481  142625  142585  142820  142561  143117  142358         

      Upper diagonal: Proportion of successful state exchanges between chains
      Lower diagonal: Number of attempted state exchanges between chains

      Chain information:

        ID -- Heat 
       -----------
         1 -- 1.00  (cold chain)
         2 -- 0.91 
         3 -- 0.83 
         4 -- 0.77 
         5 -- 0.71 
         6 -- 0.67 
         7 -- 0.62 
         8 -- 0.59 

      Heat = 1 / (1 + T * (ID - 1))
         (where T = 0.10 is the temperature and ID is the chain number)

      Setting sumt nruns to 2
      Using relative burnin (a fraction of samples discarded).
      Setting burnin fraction to 0.25
      Summarizing trees in files "concatenatedMolmorph.nexus.run1.t" and "concatenatedMolmorph.nexus.run2.t"
      Using relative burnin ('relburnin=yes'), discarding the first 25 % of sampled trees
      Writing statistics to files concatenatedMolmorph.nexus.<parts|tstat|vstat|trprobs|con>
      Examining first file ...
      Found one tree block in file "concatenatedMolmorph.nexus.run1.t" with 1001 trees in last block
      Expecting the same number of trees in the last tree block of all files

      Tree reading status:

      0      10      20      30      40      50      60      70      80      90     100
      v-------v-------v-------v-------v-------v-------v-------v-------v-------v-------v
      *********************************************************************************

      Read a total of 2002 trees in 2 files (sampling 1502 of them)
         (Each file contained 1001 trees of which 751 were sampled)
      Overwriting file "concatenatedMolmorph.nexus.parts"
      Overwriting file "concatenatedMolmorph.nexus.tstat"
      Overwriting file "concatenatedMolmorph.nexus.vstat"
      Overwriting file "concatenatedMolmorph.nexus.con.tre"
      Overwriting file "concatenatedMolmorph.nexus.trprobs"
                                                                                   

      Summary statistics for informative taxon bipartitions
         (saved to file "concatenatedMolmorph.nexus.tstat"):

      ID   #obs    Probab.     Sd(s)+      Min(s)      Max(s)   Nruns 
      ----------------------------------------------------------------
      11  1502    1.000000    0.000000    1.000000    1.000000    2
      12  1502    1.000000    0.000000    1.000000    1.000000    2
      13  1502    1.000000    0.000000    1.000000    1.000000    2
      14  1502    1.000000    0.000000    1.000000    1.000000    2
      15  1502    1.000000    0.000000    1.000000    1.000000    2
      16  1445    0.962051    0.002825    0.960053    0.964048    2
      17   774    0.515313    0.028247    0.495340    0.535286    2
      18   627    0.417443    0.025422    0.399467    0.435419    2
      ----------------------------------------------------------------
      + Convergence diagnostic (standard deviation of split frequencies)
        should approach 0.0 as runs converge.

      Summary statistics for branch and node parameters
         (saved to file "concatenatedMolmorph.nexus.vstat"):

                                                   95% HPD Interval
                                                 --------------------
      Parameter           Mean       Variance     Lower       Upper       Median     PSRF+  Nruns
      -------------------------------------------------------------------------------------------
      length{all}[1]     0.133289    0.000881    0.082647    0.196654    0.129656    1.001    2
      length{all}[2]     0.003308    0.000011    0.000002    0.009876    0.002334    1.001    2
      length{all}[3]     0.009404    0.000071    0.000025    0.026576    0.007029    1.000    2
      length{all}[4]     0.079432    0.000358    0.047149    0.119790    0.077404    1.000    2
      length{all}[5]     0.047413    0.000270    0.017441    0.080072    0.045577    1.000    2
      length{all}[6]     0.003475    0.000011    0.000001    0.009874    0.002432    0.999    2
      length{all}[7]     0.014379    0.000219    0.000003    0.042833    0.009578    0.999    2
      length{all}[8]     0.004363    0.000022    0.000000    0.013684    0.002789    0.999    2
      length{all}[9]     0.022497    0.000332    0.000032    0.058523    0.018144    1.000    2
      length{all}[10]    0.004709    0.000027    0.000001    0.014101    0.003141    0.999    2
      length{all}[11]    0.201186    0.001979    0.128072    0.292015    0.193642    1.000    2
      length{all}[12]    0.078641    0.000271    0.050643    0.111975    0.075808    0.999    2
      length{all}[13]    0.052153    0.000239    0.023729    0.083822    0.051101    1.000    2
      length{all}[14]    0.029239    0.000114    0.011476    0.050301    0.028309    1.000    2
      length{all}[15]    0.174953    0.001986    0.095071    0.271507    0.171244    0.999    2
      length{all}[16]    0.023366    0.000104    0.003781    0.044424    0.022548    0.999    2
      length{all}[17]    0.033342    0.000670    0.000281    0.082511    0.026567    0.999    2
      length{all}[18]    0.018629    0.000149    0.000108    0.041300    0.016832    0.998    2
      -------------------------------------------------------------------------------------------
      + Convergence diagnostic (PSRF = Potential Scale Reduction Factor; Gelman
        and Rubin, 1992) should approach 1.0 as runs converge. NA is reported when
        deviation of parameter values within all runs is 0 or when a parameter
        value (a branch length, for instance) is not sampled in all runs.

      Summary statistics for partitions with frequency >= 0.10 in at least one run:
          Average standard deviation of split frequencies = 0.007062
          Maximum standard deviation of split frequencies = 0.028247
          Average PSRF for parameter values (excluding NA and >10.0) = 1.000
          Maximum PSRF for parameter values = 1.001

      Clade credibility values:

      /---------------------------------------------------------- Acestrorhynchus~ (4)
      |                                                                               
      |---------------------------------------------------------- Acestrorhynchus~ (1)
      |                                                                               
      |                                               /---------- Cynodon_gibbus (2)
      |                            /--------100-------+                               
      |                            |                  \---------- Cynodon_septen~ (10)
      |                            |                                                  
      +                  /----52---+                  /---------- Hydrolycus_scom~ (3)
      |                  |         |         /---96---+                               
      |                  |         |         |        \---------- Hydrolycus_MUN_~ (7)
      |                  |         \---100---+                                        
      |         /---100--+                   |        /---------- Hydrolycus_arma~ (6)
      |         |        |                   \---100--+                               
      |         |        |                            \---------- Hydrolycus_tata~ (8)
      \---100---+        |                                                            
                |        \--------------------------------------- Hydrolycus_wall~ (9)
                |                                                                     
                \------------------------------------------------ Rhaphiodon_vulp~ (5)
                                                                                      

      Phylogram (based on average branch lengths):

                                                                                                                              /--------- Acestrorhynchus~ (4)
      |                                                                               
      |---------------- Acestrorhynchus~ (1)
      |                                                                               
      |                                                        / Cynodon_gibbus (2)
      |                                               /--------+                      
      |                                               |        \ Cynodon_septen~ (10)
      |                                               |                               
      +                                            /--+        /- Hydrolycus_scom~ (3)
      |                                            |  |     /--+                      
      |                                            |  |     |  \- Hydrolycus_MUN_~ (7)
      |                                            |  \-----+                         
      |                       /--------------------+        |   / Hydrolycus_arma~ (6)
      |                       |                    |        \---+                     
      |                       |                    |            \ Hydrolycus_tata~ (8)
      \-----------------------+                    |                                  
                              |                    \-- Hydrolycus_wall~ (9)
                              |                                                       
                              \----- Rhaphiodon_vulp~ (5)
                                                                                      
      |-----------| 0.100 expected changes per site

      Calculating tree probabilities...

      Credible sets of trees (9 trees sampled):
         50 % credible set contains 2 trees
         90 % credible set contains 3 trees
         95 % credible set contains 3 trees
         99 % credible set contains 6 trees

      Plotting parameters in file concatenatedMolmorph.nexus.run1.p ...
      Found 1000 parameter lines in file "concatenatedMolmorph.nexus.run1.p"
      Of the 1000 lines, 751 of them will be summarized (starting at line 252)
      (Only the last set of lines will be read, in case multiple
      parameter blocks are present in the same file.)

      Rough trace plot of parameter LnL:

   +------------------------------------------------------------+ -14304.194
   |                   *                                        |
   |                            *                *              |
   |  *          *                                            * |
   |               *         *   *    *            *           *|
   |            *     *                        *                |
   |         *                           *             *        |
   |   * *  *            *              *            *   * * *  |
   |      *    *  *  *    * *      *                *           |
   |       *                      *    *   * *  *               |
   |                                                  *         |
   |    *           *         **          *             *   *   |
   |**        *         *  *        **      *                   |
   |                                                            |
   |                                                            |
   |                                          *   *       *     |
   +------+-----+-----+-----+-----+-----+-----+-----+-----+-----+ -14312.725
   ^                                                            ^
   1000000                                                     4000000

      Summarizing parameters in files concatenatedMolmorph.nexus.run1.p and concatenatedMolmorph.nexus.run2.p
      Writing summary statistics to file concatenatedMolmorph.nexus.pstat
      Using relative burnin ('relburnin=yes'), discarding the first 25 % of samples

      Below are rough plots of the generation (x-axis) versus the log   
      probability of observing the data (y-axis). You can use these     
      graphs to determine what the burn in for your analysis should be. 
      When the log probability starts to plateau you may be at station- 
      arity. Sample trees and parameters after the log probability      
      plateaus. Of course, this is not a guarantee that you are at sta- 
      tionarity. Also examine the convergence diagnostics provided by   
      the 'sump' and 'sumt' commands for all the parameters in your     
      model. Remember that the burn in is the number of samples to dis- 
      card. There are a total of ngen / samplefreq samples taken during 
      a MCMC analysis.                                                  

      Overlay plot for both runs:
      (1 = Run number 1; 2 = Run number 2; * = Both runs)

      +------------------------------------------------------------+ -14304.19
      |                   1                           2            |
      |    2                       1              2 1              |
      | 21          * 1                             2     22     1 |
      |            1     1      1  2*2   1 2      1   1      2    1|
      |          2          2 2             1  2         2         |
      |  21 *  11     2     12   2       2 1 2          1 1 1   1  |
      |2  2  *    1     1  2 1 1      1 2   2    2     *      *    |
      |       *    2 1 222           1    *   1 1  1        2  2 2 |
      |              2    2       2   2         2       21      2  |
      | 1  1   221     1        211    1     1 1   2 2     1   1   |
      |1                   1  12        1                         2|
      |                                2                           |
      |                                              1             |
      |                                          1           1     |
      |           2                           2                    |
      +------+-----+-----+-----+-----+-----+-----+-----+-----+-----+ -14313.81
      ^                                                            ^
      1000000                                                      4000000

      Overwriting file "concatenatedMolmorph.nexus.lstat"

      Estimated marginal likelihoods for runs sampled in files
         "concatenatedMolmorph.nexus.run1.p" and "concatenatedMolmorph.nexus.run2.p":
         (Use the harmonic mean for Bayes factor comparisons of models)

         (Values are saved to the file concatenatedMolmorph.nexus.lstat)

      Run   Arithmetic mean   Harmonic mean
      --------------------------------------
        1     -14299.72        -14325.12
        2     -14297.53        -14323.07
      --------------------------------------
      TOTAL   -14298.12        -14324.55
      --------------------------------------

      Model parameter summaries over the runs sampled in files
         "concatenatedMolmorph.nexus.run1.p" and "concatenatedMolmorph.nexus.run2.p":
         Summaries are based on a total of 1502 samples from 2 runs.
         Each run produced 1001 samples of which 751 samples were included.
         Parameter summaries saved to file "concatenatedMolmorph.nexus.pstat".
      Overwriting file "concatenatedMolmorph.nexus.pstat"

                                              95% HPD Interval
                                            --------------------
      Parameter       Mean      Variance     Lower       Upper       Median    min ESS*  avg ESS    PSRF+ 
      ----------------------------------------------------------------------------------------------------
      TL{all}       0.906569    0.027804    0.636957    1.254420    0.870487    390.93    447.25    1.000
      kappa{2}      2.560789    0.179689    1.802146    3.382903    2.523988    655.17    703.09    1.001
      kappa{3}     11.298108   13.333487    6.173385   17.316880   10.598990    304.06    407.80    1.003
      kappa{4}      8.701980   22.650124    3.368702   18.244930    7.431136    338.00    342.91    1.000
      kappa{5}     21.845780  106.695852    7.128031   42.020890   19.394690    409.15    439.98    1.000
      kappa{6}      6.476453    8.227564    2.207621   12.170860    5.926735    586.91    668.96    1.000
      kappa{7}      6.031039    2.996060    2.818789    9.166670    5.741442    651.62    699.26    1.003
      kappa{8}      4.284521    0.844175    2.697043    6.188033    4.187593    451.96    525.75    1.000
      r(A<->C){1}   0.075540    0.000602    0.028880    0.122305    0.073670    688.73    710.93    0.999
      r(A<->G){1}   0.199142    0.001676    0.126512    0.283856    0.197170    676.91    713.96    1.002
      r(A<->T){1}   0.121282    0.000850    0.063733    0.176825    0.118671    696.99    719.12    1.000
      r(C<->G){1}   0.014462    0.000108    0.000041    0.034588    0.012073    751.00    751.00    0.999
      r(C<->T){1}   0.578381    0.003234    0.467642    0.690313    0.579027    587.21    655.07    1.000
      r(G<->T){1}   0.011193    0.000099    0.000007    0.030324    0.008740    573.77    662.38    0.999
      pi(A){1}      0.313250    0.000315    0.278189    0.346088    0.312952    660.75    705.88    0.999
      pi(C){1}      0.241985    0.000264    0.212140    0.274688    0.242420    461.77    475.78    0.999
      pi(G){1}      0.219495    0.000271    0.185675    0.249255    0.219316    751.00    751.00    0.999
      pi(T){1}      0.225270    0.000225    0.197972    0.257017    0.224927    694.18    722.59    0.999
      pi(A){2}      0.252343    0.000367    0.214491    0.289699    0.252329    738.48    744.74    0.999
      pi(C){2}      0.262961    0.000372    0.226524    0.299398    0.263603    667.75    709.37    0.999
      pi(G){2}      0.243592    0.000365    0.207520    0.279244    0.242963    698.98    724.99    1.000
      pi(T){2}      0.241103    0.000354    0.203547    0.277618    0.241627    706.38    728.69    1.000
      pi(A){3}      0.292680    0.000191    0.267680    0.321394    0.292268    751.00    751.00    0.999
      pi(C){3}      0.325091    0.000175    0.298822    0.350909    0.325158    695.46    713.12    1.000
      pi(G){3}      0.113255    0.000072    0.096673    0.129513    0.112789    573.79    589.49    1.001
      pi(T){3}      0.268974    0.000138    0.245692    0.291579    0.268669    635.47    693.23    0.999
      pi(A){4}      0.247125    0.000297    0.217170    0.284317    0.246350    672.57    711.79    1.000
      pi(C){4}      0.304018    0.000316    0.266929    0.334635    0.303728    739.90    745.45    0.999
      pi(G){4}      0.164411    0.000201    0.137046    0.192159    0.163818    751.00    751.00    1.000
      pi(T){4}      0.284447    0.000303    0.249455    0.315914    0.284927    697.71    724.35    1.000
      pi(A){5}      0.279881    0.000202    0.253541    0.308821    0.279698    576.68    663.84    1.000
      pi(C){5}      0.350201    0.000210    0.322004    0.377898    0.350140    715.79    722.12    1.001
      pi(G){5}      0.127210    0.000100    0.108591    0.148089    0.126882    751.00    751.00    1.000
      pi(T){5}      0.242708    0.000166    0.217315    0.267619    0.242874    623.94    687.47    0.999
      pi(A){6}      0.312088    0.000271    0.280197    0.343800    0.312396    609.03    617.55    0.999
      pi(C){6}      0.206084    0.000211    0.177342    0.232597    0.205669    744.55    747.77    0.999
      pi(G){6}      0.230278    0.000219    0.201520    0.258501    0.230158    632.79    658.84    0.999
      pi(T){6}      0.251550    0.000250    0.220277    0.281476    0.251002    670.67    710.84    0.999
      pi(A){7}      0.256074    0.000143    0.233151    0.280059    0.256059    619.32    683.44    1.001
      pi(C){7}      0.228150    0.000129    0.207347    0.251446    0.228037    751.00    751.00    1.000
      pi(G){7}      0.270845    0.000146    0.247758    0.294281    0.270639    705.20    728.10    1.000
      pi(T){7}      0.244931    0.000142    0.221539    0.266966    0.244862    627.10    661.90    1.000
      pi(A){8}      0.250499    0.000159    0.225350    0.275048    0.250393    601.94    669.29    1.000
      pi(C){8}      0.244031    0.000158    0.221457    0.269083    0.243860    549.45    630.02    0.999
      pi(G){8}      0.266632    0.000171    0.240471    0.291863    0.266575    579.02    600.53    1.000
      pi(T){8}      0.238838    0.000152    0.213982    0.261302    0.238628    751.00    751.00    0.999
      alpha{4}      0.248615    0.008885    0.104921    0.420569    0.232503    393.50    486.01    0.999
      pinvar{1}     0.664251    0.001262    0.595964    0.733256    0.667073    751.00    751.00    0.999
      pinvar{3}     0.502445    0.000483    0.461117    0.542674    0.503027    645.17    679.53    1.000
      pinvar{5}     0.742619    0.000386    0.703232    0.779179    0.742878    695.42    709.93    1.000
      m{1}          0.545855    0.011581    0.309970    0.733469    0.541616    399.44    476.01    1.000
      m{2}          1.122956    0.041269    0.721757    1.496974    1.122242    389.47    429.13    1.000
      m{3}          2.538385    0.263231    1.519941    3.527237    2.490223    256.91    342.24    1.007
      m{4}          1.453892    0.357645    0.588773    2.705833    1.302760    306.29    326.32    1.000
      m{5}          2.400208    0.387332    1.346345    3.727874    2.314287    313.70    381.12    1.003
      m{6}          0.119722    0.000775    0.067601    0.173854    0.118468    406.49    489.69    1.000
      m{7}          0.126776    0.000674    0.076443    0.177564    0.126266    327.69    477.05    1.000
      m{8}          0.278858    0.002905    0.179560    0.389892    0.276926    326.18    392.50    1.000
      m{9}          2.378474    0.320960    1.283199    3.444114    2.328647    483.11    495.89    0.999
      ----------------------------------------------------------------------------------------------------
      * Convergence diagnostic (ESS = Estimated Sample Size); min and avg values
        correspond to minimal and average ESS among runs. 
        ESS value below 100 may indicate that the parameter is undersampled. 
      + Convergence diagnostic (PSRF = Potential Scale Reduction Factor; Gelman
        and Rubin, 1992) should approach 1.0 as runs converge.
```
