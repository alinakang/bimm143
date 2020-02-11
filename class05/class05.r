#' ---
#' title: "Class 5: Data Visualization and graphs in R"
#' author: "Alina Kang"
#' date: "2020-01-23"
#' ---

# Class 5
# Data Visualization and graphs in R

plot(1:10, col = "blue", typ = "o")

# Need to import/read input data file first

baby <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)

# Plot the Baby weight with age

plot(baby, col = "blue", typ = "o", pch = 15, cex = 1.5, lwd = 2, ylim = c(2,10), xlab = "Age (months)", ylab = "Weight (kg)", main = "Baby weight with age")

# A silly example of 'pch' plot character and 'cex' size

plot(1:5, pch = 1:5, cex = 1:5)

# Next example of mouse genome features

mouse <- read.table("bimm143_05_rstats/feature_counts.txt", sep = "\t", header = TRUE)

# Barplot of mouse genome features

par(mar=c(5,11,0,1))
barplot(mouse$Count, horiz = TRUE, names.arg = mouse$Feature, las = 1, main = "Number of features in the mouse GRCm38 genome")

# Section 3 
mf <- read.delim("bimm143_05_rstats/male_female_counts.txt")

#Barplot of male_female_counts
barplot(mf$Count, names.arg = mf$Sample, col = c("red", "blue"), las = 2)

barplot(mf$Count, names.arg = mf$Sample, col = rainbow(nrow(mf)), las = 2)











