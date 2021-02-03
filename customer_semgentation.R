mydata= read.csv("E:\\Dataset\\customer-segmentation-dataset\\Mall_Customers.csv")
library(plotrix)

df=mydata
par(mfrow= c(4,1))
# Gender visualization using bargraph.

group= table(df$Gender)
barplot(group, xlab = "Gender", ylab = "Number", main = "Classifcation of male & female", col = rainbow(2), legend.text =rownames(a))
# Gender visualization using piechart.

r= round(group/sum(group)*100)
lbs= paste(c("Female","Male"),"",r,"%")
pie3D(group, labels =lbs, main="Pie chart for love")

#  visualization of age distribution using histogram.

ages=df$Age
hist(ages, col = "green", xlab = "Ages", ylab = "Number of Gender", labels = TRUE,main = "Histogram")

#  visualization of age using Boxplot for compare the values in graph.

boxplot(ages, main="Discriptive analysis of ages", col = "blue")



