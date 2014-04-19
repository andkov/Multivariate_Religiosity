
install.packages("sem")
install.packages("psych")
install.packages("MASS")
install.packages("Hmisc")
install.packages("colorspace")
install.packages("corrgram")
install.packages("plyr")
install.packages("ggplot2")
install.packages("shiny")
install.packages("maps")
install.packages("map")
install.packages("plotrix")
install.packages("fortify")
install.packages("ddply")
install.packages("corrplot")


require(sem)
library(psych)
library(MASS)
library(Hmisc)
library(colorspace)
library(corrgram)
library(plyr)
library(ggplot2)
library(maps)
library(shiny)
library(plotrix)

# Load custom functions
source(file.path(getwd(),"functions","Steiger R library functions.txt"))
source(file.path(getwd(),"functions","AdvancedFactorFunctions.txt"))
source(file.path(getwd(),"functions","fa.promax.R"))

# Load datasets
AthleticsData <- read.csv(file.path(getwd(),"R Support Materials/datasets","AthleticsData.csv"))








