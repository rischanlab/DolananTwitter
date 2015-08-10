
#twitter data processing

setwd("D:\\ustadzmafrur")

list.files()

data <- read.csv("rischan-tweets.csv")

head(data)

new_data <- subset(data,data$expanded_urls=="")

new_data <- new_data[,1]
head(new_data)


write.csv(new_data, "new_data.csv")


##read data in second step 
data <- read.csv("new_data.csv")

