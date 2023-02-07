students_mat <- read.csv("student-mat.csv")
str(students_mat)
View(students_mat)
ncol(students_mat)
nrow(students_mat)
colSums(is.na(students_mat))
students_mat_clean <- na.omit(students_mat)
nrow(students_mat_clean)

library(rpart.plot)
prp(model_tree)

