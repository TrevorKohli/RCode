kobe <- read.csv("kobe08.csv")
head(kobe)

counts <- table(kobe$game_date)
barplot(counts)

counts <- table(kobe$shot_made_flag)
barplot(counts)

mean(kobe$shot_distance)
median(kobe$shot_distance)
var(kobe$shot_distance)
quantile(kobe$shot_distance, 0.25)

counts <- table(kobe$shot_made_flag, kobe$shot_distance)
rownames(counts) <- c("Fail", "Success")
colnames(counts) 
barplot(counts, col = c("darkblue", "red"), legend = rownames(counts))

counts <- table(kobe$combined_shot_type)
barplot(counts)

counts <- table(kobe$shot_type, kobe$combined_shot_type)
rownames(counts) 
colnames(counts) 
barplot(counts, col = c("darkblue", "red"), legend = rownames(counts))