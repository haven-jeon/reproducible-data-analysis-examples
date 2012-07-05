library(knitr)

library(devtools)
install.packages("brew")
install_github('pander', 'daroczig')
library(pander)


setwd("iris")

#system("ls -al")

knit("data_analysis.md")

Pandoc.convert(f="data_analysis.md", format="docx")

?Pandoc.convert

?knit

knit
