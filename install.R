#!/usr/bin/env R
install.packages("BiocInstaller",
                 repos="http://bioconductor.org/packages/3.5/bioc")
library("BiocInstaller")
biocLite()
biocLite(c("S4Vectors", "IRanges"))

