library(knitr)

library(devtools)
install.packages("brew")
install_github('pander', 'daroczig')
library(pander)


setwd("iris")
getwd()
#system("ls -al")

#data_analysis.md
knit("data_analysis.Rmd")

Pandoc.convert(f="data_analysis.md", format="html", open=T)

?Pandoc.convert

?knit

knit


