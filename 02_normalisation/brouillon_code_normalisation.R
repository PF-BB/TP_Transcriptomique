
grViz("
digraph {
  # graph attributes
  graph LR[overlap = true, orientation=landscape]
  # node attributes
  node [shape = rectangle,
        fixedsize = true,
        width = 0.9]
  # edge attributes
  edge [color = gray]
  # node statements
  Parent; Child1; Child2 [color = black]
  # edge statements
  Parent -> Child1; Parent -> Child2
}
")
grViz("
digraph {
  # graph attributes
  graph [overlap = true, orientation=landscape]
  # node attributes
  node [shape = rectangle,
        fixedsize = true,
        width = 0.9]
  # edge attributes
  edge [color = gray]
  # node statements
  Parent; Child1; Child2 [color = black]
  # edge statements
  Parent -> Child1; Parent -> Child2
}
")
mermaid("
graph LR
A((Parent)) -> B((Child 1));
A((Parent)) -> C((Child 2));
")
mermaid("
graph LR
A((Parent)) -> B((Child1));
A((Parent)) -> C((Child2));
")
mermaid("
graph LR;
A((Parent)) -> B((Child1));
A((Parent)) -> C((Child2));
")
mermaid(" graph LR;
A((Parent)) -> B((Child1));
A((Parent)) -> C((Child2))
")
mermaid("graph LR;
A((Parent)) -> B((Child1));
A((Parent)) -> C((Child2))
")
mermaid("graph LR; A((Parent)) -> B((Child1)); A((Parent)) -> C((Child2))")
mermaid("graph LR; A((Parent)) --> B((Child1)); A((Parent)) --> C((Child2))")
mermaid("graph LR; A((Parent)) --> B((Child 1)); A((Parent)) --> C((Child 2))")
DiagrammeR(
paste0(
"graph TD;", "\n",
paste(connections, collapse = "\n"),"\n",
"classDef column fill:#0001CC, stroke:#0D3FF3, stroke-width:1px;" ,"\n",
  "class ", paste0(1:length(connections), collapse = ","), " column;"
)
# Load in the 'mtcars' dataset
data(mtcars)
connections <- sapply(
  1:ncol(mtcars)
  ,function(i){
    paste0(
      i
      ,"(",colnames(mtcars)[i],")---"
      ,i,"-stats("
      ,paste0(
        names(summary(mtcars[,i]))
        ,": "
        ,unname(summary(mtcars[,i]))
        ,collapse="<br/>"
      )
      ,")"
    )
  }
)
DiagrammeR(
  paste0(
    "graph TD;", "\n",
    paste(connections, collapse = "\n"),"\n",
    "classDef column fill:#0001CC, stroke:#0D3FF3, stroke-width:1px;" ,"\n",
    "class ", paste0(1:length(connections), collapse = ","), " column;"
  )
  grViz("
        digraph {
        # graph attributes
        graph [overlap = true, orientation=landscape]
        # node attributes
        node [shape = rectangle,
        fixedsize = true,
        width = 0.9,angle=90]
        # edge attributes
        edge [color = gray]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [overlap = true, orientation=landscape]
        # node attributes
        node [shape = rectangle,
        fixedsize = true,
        width = 0.9,labelangle=90]
        # edge attributes
        edge [color = gray]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [overlap = true, orientation=landscape]
        # node attributes
        node [shape = rectangle,
        fixedsize = true,
        width = 0.9,textangle=90]
        # edge attributes
        edge [color = gray]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [overlap = true, orientation=landscape]
        # node attributes
        node [shape = rectangle,
        fixedsize = true,
        width = 0.9,orientation=90]
        # edge attributes
        edge [color = gray]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  grViz('
        digraph G {
        size = "4,4";
        main [shape = box]; /* this is a comment */
        main -> parse [weight = 8];
        parse -> execute;
        main -> init [style = dotted];
        main -> cleanup;
        execute -> { make_string; printf}
        init -> make_string;
        edge [color = red]; // so is this
        main -> printf;
        node [shape = box, style = filled, color = ".7 .3 1.0"];
        execute -> compare;
        }
        ')
  grViz("
        digraph {
        # graph attributes
        graph [overlap = true, orientation=landscape, rankdir=LR]
        # node attributes
        node [shape = rectangle,
        fixedsize = true,
        width = 0.9,orientation=90]
        # edge attributes
        edge [color = gray]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [overlap = true, rankdir=LR]
        # node attributes
        node [shape = rectangle,
        fixedsize = true,
        width = 0.9,orientation=90]
        # edge attributes
        edge [color = gray]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [overlap = true, rankdir=LR]
        # node attributes
        node [shape = rectangle,
        fixedsize = true,
        width = 0.9,orientation=90]
        # edge attributes
        edge [color  = gray,
        splines = curved]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [overlap = true, rankdir=LR]
        # node attributes
        node [shape = ellipse]
        # edge attributes
        edge [color  = gray,
        splines = curved]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [rankdir=LR]
        # node attributes
        node [shape = ellipse]
        # edge attributes
        edge [color  = gray,
        splines = curved]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [rankdir=LR]
        # node attributes
        node [shape = ellipse]
        # edge attributes
        edge [color  = gray,
        splines = curved]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> "Child 1"; Parent -> "Child 2"
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [rankdir=LR]
        # node attributes
        node [shape = ellipse]
        # edge attributes
        edge [color  = gray,
        splines = curved]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> "Child2"
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [rankdir=LR]
        # node attributes
        node [shape = ellipse]
        # edge attributes
        edge [color  = gray,
        splines = curved]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [rankdir=LR]
        # node attributes
        node [shape = ellipse]
        # edge attributes
        edge [color  = gray,
        splines = curved]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  grViz("
        digraph {
        # graph attributes
        graph [rankdir=LR]
        # node attributes
        node [shape = ellipse]
        # edge attributes
        edge [color  = gray,
        splines = curved]
        # node statements
        Parent; Child1; Child2 [color = black]
        # edge statements
        Parent -> Child1; Parent -> Child2
        }
        ")
  setwd("~/Bureau/TP-Génomique-Marie-Anne")
  load("save_ma_files.RData")
  class(data)
  plot(data[,1])
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
  data2 <- read.GenePix(fnames = ids[[2]], path = "data_output_genepix/", skip = as.numeric(names(ids)[2])-1, read.Gb=NULL)
  data2 <- read.GenePix(fnames = ids[[2]], path = "data_output_genepix/", skip = as.numeric(names(ids)[1])-1, read.Gb=NULL)
  data2 <- read.GenePix(fnames = ids[[1]], path = "data_output_genepix/", skip = as.numeric(names(ids)[1])-1, read.Gb=NULL)
  plot(data2[,1])
  data2 <- read.GenePix(fnames = ids[[1]], path = "data_output_genepix/", skip = as.numeric(names(ids)[1])-1, read.Gb=NULL, read.Rb=NULL)
  plot(data2[,1])
  ?plot.marrayRaw()
  widget.marrayRaw()
  install.packages("tkWidgets")
  ## try http if https is not available
  source("https://bioconductor.org/biocLite.R")
  biocLite("tkWidgets")
  read.GenePix()
  read.GenePix
  ?read.marrayRaw
  read.marrayRaw
  essai <- read.marrayRaw(fnames = ids[[1]], path = "data_output_genepix/", skip = as.numeric(names(ids)[1])-1, read.Gb=NULL, read.Rb=NULL)
  essai <- read.marrayRaw(fnames = ids[[1]], path = "data_output_genepix/", skip = as.numeric(names(ids)[1])-1, name.Gb=NULL, name.Rb=NULL)
  plot(essai[,1])
  ?plot.marrayRaw
  galinfo <- read.Galfile("AWS.gal", skip = 133)
  class(galinfo)
  essai <- read.GenePix(fnames = ids[[1]], path = "data_output_genepix/", skip = as.numeric(names(ids)[1])-1, name.Gb=NULL, name.Rb=NULL)
  plot(essai[,1])
  data1 <- read.GenePix(fnames = ids[[1]], path = "data_output_genepix/", skip = as.numeric(names(ids)[1])-1, name.Gb=NULL, name.Rb=NULL)
  data2 <- read.GenePix(fnames = ids[[2]], path = "data_output_genepix/", skip = as.numeric(names(ids)[2])-1, name.Gb=NULL, name.Rb=NULL)
  galinfo <- read.Galfile("AWS.gal", skip = 133)
  data1@maLayout <- galinfo$layout
  data2@maLayout <- galinfo$layout
  data1@maGnames <- galinfo$gnames
  data2@maGnames <- galinfo$gnames
  data <- cbind(data1, data2)
  save(data, galinfo, file="save_ma_files.RData")
  plot(data[,1])
  plot.marrayRaw()
  ?plot.marrayRaw
  plot(data[,1], zvar=NULL)
  ?maNorm
  maNorm
  data@maRb
  data@maRf
  data@maLayout
  data@maTargets
  data@maNotes
  ?read.GenePix()
  data@maW
  image(data@maW)
  dim(data@maW)
  sum(rowSums(data@maW)==0)
  good <- rowSums(data@maW)==0
  plot(data[good, 1])
  ?maNorm
  raw
  dat
  dat <- data
  datnorm <- maNorm(dat, norm="printTipLoess", subset=TRUE)
  plot(datnor[,1])
  plot(datnorm[,1])
  boxplot(datnorm)
  boxplot(dat)
  plot(dat[,13])
  ??dye
  save(dat, datnorm, file="data_raw_and_loessnorm_tp_20150918.RData")
  ?plot.marrayNorm
  dim(dat)
  NCOl(dat)
  ncol(dat)
  pdf("MAraw.pdf")
  for( i in 1:ncol(dat))
    plot(dat[, i], zvar=NULL)
  dev.off()
  pdf("MAnorm.pdf")
  for( i in 1:ncol(dat))
    plot(datnorm[, i], zvar=NULL)
  dev.off()
  layout(matrix(1:24), 6, 4)
  for( i in 1:ncol(dat))
    plot(dat[, i], zvar=NULL)
  ??quality
  ## try http if https is not available
  source("https://bioconductor.org/biocLite.R")
  biocLite("arrayQualityMetrics")
  ?png
  library(arrayQualityMetrics)
  ?arrayQualityMetrics
  arrayQualityMetrics(dat)
  biocLite("convert")
  require(convert)
  ?convert
  truc <- as(dat, "MAList")
  truc <- as(datnorm, "MAList")
  truc <- as(datnorm, "RGList")
  truc <- as(dat, "RGList")
  arrayQualityMetrics(truc)
  ?arrayQualityMetrics
  aqm.maplot(prepdata(truc))
  aqm.maplot(prepdata(truc, do.logtransform=TRUE))
  aqm.maplot(prepdata(truc, do.logtransform=TRUE, intgroup=FALSE))
  pData(truc)
  prepdata
  maPlot
  aqm.maplot
  dim(truc@.Data)
  head(truc@.Data)
  names(truc)
  class(truc$R)
  truc$R[1:10, 1:10]
  M <- log2(truc$R / truc$G)
  A <- 1/2*log2(truc$R * truc$G)
  ?arrayQualityMetrics
  arrayQualityMetrics(truc, maxNumArrays=24)
  arrayQualityMetrics(truc, maxNumArrays=24, force=TRUE)
  dat_rglist <- as(dat, "RGList")
  datnorm_malist <- as(datnorm, "MAList")
  arrayQualityMetrics(dat_rglist, maxNumArrays=24, force=TRUE)
  arrayQualityMetrics(datnorm_malist, maxNumArrays=24, force=TRUE)
  arrayQualityMetrics(datnorm_malist, maxNumArrays=23, force=TRUE)
  arrayQualityMetrics(datnorm_malist, maxNumArrays=12, force=TRUE)
  arrayQualityMetrics(datnorm_malist, maxNumArrays=6, force=TRUE)
  arrayQualityMetrics(datnorm_malist force=TRUE)
  arrayQualityMetrics(datnorm_malist, force=TRUE)
  sprintf("maplot_norm_%i.png", i)
  for (i in 1:ncol(datnorm)){
    png(sprintf("maplot_norm/maplot_norm_%i.png", i))
    plot(datnorm[,i])
    dev.off()
  }
  plot(datnorm[,i])
  i
  datnorm
  dev.off()
  ?plot.marrayNorm()
  plot(datnorm[,i], zvar=NULL)
  for (i in 1:ncol(datnorm)){
    png(sprintf("maplot_norm/maplot_norm_%i.png", i))
    plot(datnorm[,i], zvar=NULL)
    dev.off()
  }
  png(sprintf("maplot_norm/maplot_norm_%i.png", i))
  plot(datnorm[,i], zvar=NULL)
  dev.off()
  for (i in 1:24){
    png(sprintf("maplot_norm/maplot_norm_%i.png", i))
    plot(datnorm[,i], zvar=NULL)
    dev.off()
  }
  ??dye
  