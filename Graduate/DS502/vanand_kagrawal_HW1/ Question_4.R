#Problem 4

college = read.csv('College.csv');
rownames(college)=college[,1];
college=college[,-1]
fix(college);

summary(college);

pairs(college[,1:10])

boxplot(college$Outstate ~ college$Private);

Elite =rep ("No",nrow(college ))
Elite [college$Top10perc >50]=" Yes"
Elite =as.factor (Elite)
college =data.frame(college ,Elite)

summary(college$Elite)

boxplot(college$Outstate ~ college$Elite)

par(mfrow=c(2,2))
hist(college$F.Undergrad);
hist(college$P.Undergrad);
hist(college$Outstate);
hist(college$Enroll);

summary(college$Accept)