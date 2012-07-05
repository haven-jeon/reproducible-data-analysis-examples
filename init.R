library(knitr)

library(devtools)
install.packages("brew")
install_github('pander', 'daroczig')
library(pander)


setwd("iris")

#system("ls -al")

#data_analysis.md
knit("data_analysis.Rmd")

Pandoc.convert(f="data_analysis.md", format="docx")

?Pandoc.convert

?knit

knit
