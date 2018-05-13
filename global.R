# load libraries
suppressMessages(library(tm))
suppressMessages(library(stringr))

# auxiliary functions
truncateText <- function(text, wordCount = 3) {
        truncText <- paste(tail(unlist(strsplit(text, " ")),
                                wordCount),
                           collapse = " ")
        return(truncText)
}

ConvertTo <- function(text, pattern1, pattern2)
        gsub(pattern1, pattern2, text)

removePattern <- function(text, pattern)
        ConvertTo(text, pattern, "")

# load n-gram frequency tables
load("Data/1gramFreq.RData")
load("Data/2gramFreq.RData")
load("Data/3gramFreq.RData")
load("Data/4gramFreq.Rda")

source('prepareText.R')
source('PredictWord.R')