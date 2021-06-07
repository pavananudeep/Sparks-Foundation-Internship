link<-"https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv"
data<-read.csv(link)
data
result<-lm(Scores~Hours,data)
result
plot(data$Hours,data$Scores,xlab="Hours",ylab="Scores",abline(result,col="blue"),main="Prediction using Supervised ML",col="red")
a<-data.frame(Hours=9.25)
cat("Predicting score if a student studies 9.25 hrs ",a)
