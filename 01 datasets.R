rm(list=ls(all=TRUE)) #Clear out variables from previous runs.
# update.packages("ask=F")
require(colorspace)
require(lme4)
require(Matrix)
require(lattice)
require(car)
require(MASS)
require(nnet)
require(ggplot2)
require(plyr)
require(reshape2)
require(colorspace) 
library(corrgram)
library(corrplot)
library(psych)

# Load custom functions
source(file.path(getwd(),"functions","Steiger R library functions.txt"))
source(file.path(getwd(),"functions","AdvancedFactorFunctions.txt"))
source(file.path(getwd(),"functions","fa.promax.R"))


#######
# NOTE: you must have  "NLSY-97_Religiosity" repository in your local GitHub folder 
# in order to execute (1) and (2)
pathGitHub <- file.path("C:/Users/inspirion/Documents/GitHub") # locate the "GitHub" folder on your computer
#######
# (1) requires "NLSY-97_Religiosity" repository
# Read the source file from NLS Web Investigator and prepare the parent dataset "dsSource"
######## Chose how the categories are defined in terms of the original scale.
#### GIA332 - create variable to record a summarized category of attendance
Goers<-c(8,7,6)
Irregulars<-c(5,4,3)
Absentees<-c(2,1)
#### GIA431 - create variable to record a summarized category of attendance
# Goers<-c(8,7,6,5)
# Irregulars<-c(4,3,2)
# Absentees<-c(1)

# source(file.path("C:/Users/inspirion/Documents/GitHub/NLSY-97_Religiosity/01_reading_and_cleaning.R"))


pathReadClean <- file.path(pathGitHub, paste0("NLSY-97_Religiosity/01_reading_and_cleaning.R"))
# C:/Users/USERNAME/Documents/GitHub  /Repository        /NN_Script.R 
source(pathReadClean)
rm(list=setdiff(ls(),(c("pathGitHub","dsSource")))) # Clean temp elements

# Select variabes for factor analysis
colnames(dsSource)

dsSource<-na.omit(dsSource) 

manifestvars<-c("id", "sex", "race",
                "byear","bmonth", 
                "agemon_2002", "agemon_2005", "agemon_2008", 
                "ageyear_2002","ageyear_2005","ageyear_2005",
                               "relpref_2005","relpref_2008",                
                "decide_2002","decide_2005","decide_2008",
                "obey_2002","obey_2005","obey_2008",
                "pray_2002","pray_2005","pray_2008",
                "todo_2002","todo_2005","todo_2008",
                "values_2002","values_2005","values_2008",
                "attend_2000","attend_2001","attend_2002",
                "attend_2003","attend_2004","attend_2005",
                "attend_2006","attend_2007","attend_2008",
                "attend_2009","attend_2010")

keepvars<-c("decide_2002","obey_2002","todo_2002",
            "pray_2002","values_2002")
ds2002<-dsSource[keepvars]
A<-ds2002
# bring A into deviation score form







