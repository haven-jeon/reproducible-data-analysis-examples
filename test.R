



library(knitr)

setwd("d:")

knit("test.Rmd")


system("pandoc test.md -o test.docx")




library(devtools)
install.packages("brew")
install_github('pander', 'daroczig')

library(pander)


