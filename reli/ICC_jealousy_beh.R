IOR code testing Kristina vs. Kata behavioural jealousy test video coding

library(irr)

setwd("C:/Users/karls/Documents/Laptop_backup_120319/DATADRIVE0/PhD/Studien/jealousy_behavioural/interreliability_coding")
orig.data <- read.table(file="sniffing_count.csv", header=T, sep="\t")
head(orig.data)
str(orig.data)

# sniffing = count data 
sniffing.data <- read.table(file="sniffing_count.csv", header=T, sep="\t")

icc(sniffing.data, model="twoway", type="agreement")

#Single Score Intraclass Correlation
#Model: twoway 
#Type : agreement 
#Subjects = 21 
##Raters = 2 
#ICC(A,1) = 0.827
#F-Test, H0: r0 = 0 ; H1: r0 > 0 
#F(20,17.3) = 11.8 , p = 1.79e-06 
#95%-Confidence Interval for ICC Population Values:
#0.61	 ICC < 0.927


#alternative method:
attach(data)
icc(cbind(d,j),model = "twoway",type = "consistency")

# Blocking, non-off. and dominant behaviours, Interaction with fake dog and fake dog approach and behavioural categories = binary presence/ absence analysis of data
orig.data <- read.table(file="blocking_bin.csv", header=T, sep="\t")
head(orig.data)
str(orig.data)

blocking.data <- read.table(file="blocking_bin.csv", header=T, sep="\t")

library(psych)
cohen.kappa(blocking.data)

# Christoph alternative:
# success
mean(rel_data$match_success)
cohen.kappa(cbind(rel_data$Success,rel_data$success_reli))

# number turns
cor.test(rel_data$Number_of_turns, rel_data$Number_of_turns_reli, method = "spearman", use ="complete.obs")
