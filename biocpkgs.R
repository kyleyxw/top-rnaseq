# Bioconductor packages
pkgs <- c("airway",
          "cummeRbund",
          "DESeq2",
          "DEXSeq",
          "edgeR",
          "GenomicFeatures",
          "GenomicAlignments",
          "limma",
          "org.Hs.eg.db",
          "pasilla",
          "pasillaBamSubset",
          "Rsamtools",
          "Rsubread",
          "sva",
          "TxDb.Dmelanogaster.UCSC.dm3.ensGene",
          "vsn")

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install(pkgs)