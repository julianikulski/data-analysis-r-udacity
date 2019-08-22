statesinfo <- read.csv('stateData.csv')

stateSubset <- subset(statesinfo, state.region == 1)
head(stateSubset, 2)
dim(stateSubset)

stateSubsetBracket <- statesinfo[statesinfo$highSchoolGrad > 50,]
head(stateSubsetBracket, 2)
dim(stateSubsetBracket)