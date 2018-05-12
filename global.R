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
load("data/1gramFreq.RData")
load("data/2gramFreq.RData")
load("data/3gramFreq.RData")
load("data/4gramFreq.RData")

source('functions/prepareText.R')
source('functions/predictWord.R')