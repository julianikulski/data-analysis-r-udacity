# reading in the csv file
reddit <- read.csv('reddit.csv')

# getting employment status and values per result
table(reddit$employment.status)

# looking at all columns in table
str(reddit)

# looking at all age ranges in the age range variable
levels(reddit$age.range)

# reordering the age ranges as defined in levels
reddit$age.range <- factor(reddit$age.range, levels = c('Under 18', '18-24', '25-34', 
           '35-44', '45-54', '55-64', '65 or Above'),
            ordered = T)

# plotting the age ranges
library(ggplot2)
qplot(data =  reddit, x = age.range)