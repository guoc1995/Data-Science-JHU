install.packages("data.table")
library("data.table")

# Reading in data
outcome <- data.table::fread('~/Desktop/rprog_data_ProgAssignment3-data/outcome-of-care-measures.csv')
outcome[, (11) := lapply(.SD, as.numeric), .SDcols = (11)]
outcome[, lapply(.SD
                 , hist
                 , xlab= "Deaths"
                 , main = "Hospital 30-Day Death (Mortality) Rates from Heart Attack"
                 , col="lightblue")
        , .SDcols = (11)]