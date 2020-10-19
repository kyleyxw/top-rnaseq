# Linear Model
library(edgeR)
library(limma)
# remove individuals with missing phenotype
# log-transform phenotype variable if necessary
d0 <- DGEList(gene_read)
d1 <- calcNormFactors(d0, method = "TMM")
design <- model.matrix(~cardvs_dis + ethnicity + batch + PCs + SVs + age + crp, data = pheno)
v <- voom(d1, design, plot=TRUE)
vfit <- lmFit(v, design)
efit <- eBayes(vfit)
