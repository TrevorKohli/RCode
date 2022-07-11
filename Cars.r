cars <- read.csv("cars.csv")
head(cars)

#Data Summary
mean(cars$mpg)
median(cars$mpg)
quantile(cars$mpg, 0.25)
quantile(cars$mpg, 0.75)
quantile(cars$mpg, 0.75)-quantile(cars$mpg,0.25)

#Max, Min
max(cars$mpg)
min(cars$mpg)

#Variance, Standard Deviation
var(cars$mpg)
sd(cars$mpg)

#Frequency of am
table(cars$am)
table(cars$am)/nrow(cars)

#Data Visualtization
hist(cars$mpg)

#Boxplot
boxplot(cars$mpg)
boxplot(mpg~am, cars)

#Scatter Plot
plot(mpg~wt, cars)

#Bar Plot
counts <- table(cars$am)
barplot(counts, names.arg = c("automatic","manual"))

#Stacked/dodged Bar Plot
counts <- table(cars$am, cars$vs)
rownames(counts) <- c("automatic", "manual")
colnames(counts) <- c("V-shaped", "straight")
barplot(counts, col = c("darkblue", "red"), legend = rownames(counts))