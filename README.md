---
title: "The fossil record of Saber-Tooth Characins (Teleostei: Characiformes: Cynodontinae), their phylogenetic relationships, and paleobiogeographical implications"
subtitle: "Supplementary material"
author: 
    - Gustavo A. Ballen^[Museu de Zoologia da Universidade de São Paulo, Smithsonian Tropical Research Institute]
    - Jorge W. Moreno-Bernal^[Smithsonian Tropical Research Institute and Universidad del Norte] 
    - Carlos Jaramillo^[Smithsonian Tropical Research Institute, U. Montpellier, and University of Salamanca]
---

[![DOI](https://zenodo.org/badge/349142848.svg)](https://zenodo.org/badge/latestdoi/349142848)

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

# Usage

The pdf file has specific instruccions for reproducing each analysis, the parsimony and the bayesian reconstruction.

## Dependencies

The parsimony analysis depends on `TNT` and `R`

The bayesian analysis depends on `jModelTest`, `MAFFT`, `R`, and `MrBayes`.

Most of the analytical steps were run on a laptop with two dual-core processors and 8Gb RAM. Cumputationally-intensive steps (e.g., alignment, substitution models and bayesian tree inference) were run on a cluster using 16-24 threads.

Please note that the computationa procedures were carried out on Linux, and thus it should run on most UNIX systems. No effort was done to check whether they run on Windows.

# License

This program is free software (GNU General Public License v3): you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Citation

Please cite this as:

Ballen, G.A. Moreno-Bernal, J.W. & Jaramillo, C. Submitted. The fossil record of Saber-Tooth Characins (Teleostei: Characiformes: Cynodontinae), their phylogenetic relationships, and paleobiogeographical implications.
