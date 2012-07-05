library(knitr)

library(devtools)
install.packages("brew")
install_github('pander', 'daroczig')
library(pander)


knit("data_analysis.Rmd")


