index <- file("index.html")
writeLines(c(readLines("style.html"),readLines("README.md")), index)
close(index)

library(pagedown)
pagedown::chrome_print(input = "./index.html", output = "./cv.pdf")

