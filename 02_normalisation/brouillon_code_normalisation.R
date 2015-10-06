require(convert)
require(marray)

PATHDATA <- "~/Enseignements/TP-Genomique-Marie-Anne/data"

l <- read.table(text="ID:NLINE:TERM
I1D_1_3.gpr:110:Block
I1D_1_5.gpr:110:Block
I1D_2_3.gpr:110:Block
I1D_2_5.gpr:110:Block
I1P_1_3.gpr:110:Block
I1P_1_5.gpr:110:Block
I1P_2_3.gpr:110:Block
I1P_2_5.gpr:110:Block
I2D_1_3.gpr:110:Block
I2D_1_5.gpr:110:Block
I2D_2_3.gpr:110:Block
I2D_2_5.gpr:110:Block
I2P_1_3.gpr:32:Block
I2P_1_5.gpr:32:Block
I2P_2_3.gpr:110:Block
I2P_2_5.gpr:110:Block
I3D_1_3.gpr:110:Block
I3D_1_5.gpr:110:Block
I3D_2_3.gpr:110:Block
I3D_2_5.gpr:110:Block
I3P_1_3.gpr:110:Block
I3P_1_5.gpr:110:Block
I3P_2_3.gpr:110:Block
I3P_2_5.gpr:110:Block", sep=":", header=TRUE, stringsAsFactors=F)
ids <- split(l$ID, l$NLINE)

galinfo <- read.Galfile(galfile = "AWS.gal", path=PATHDATA, skip = 133)
data1 <- read.GenePix(fnames = ids[[1]], path = PATHDATA, skip = as.numeric(names(ids)[1])-1, 
                      name.Gb=NULL, name.Rb=NULL)
data2 <- read.GenePix(fnames = ids[[2]], path = PATHDATA, skip = as.numeric(names(ids)[2])-1, 
                      name.Gb=NULL, name.Rb=NULL)

data1@maLayout <- galinfo$layout
data2@maLayout <- galinfo$layout
data1@maGnames <- galinfo$gnames
data2@maGnames <- galinfo$gnames
data <- cbind(data1, data2)

good <- rowSums(data@maW)==0
dat <- data[good, ]

datnorm <- maNorm(dat, norm="printTipLoess", subset=TRUE)

layout(1:2)
plot(dat[,1], zvar=NULL)
plot(datnorm[,1], zvar=NULL)

layout(1:2)
boxplot(dat)
boxplot(datnorm)

dat_rglist <- as(dat, "RGList")
datnorm_malist <- as(datnorm, "MAList")

arrayQualityMetrics(dat_rglist, maxNumArrays=24, force=TRUE)

for (i in 1:24){
  png(sprintf("maplot_norm/maplot_norm_%i.png", i))
    plot(datnorm[,i], zvar=NULL)
  dev.off()
}

# Dye swap
pheno <- read.csv(file.path(PATHDATA, "pheno.txt"), stringsAsFactors = FALSE)
