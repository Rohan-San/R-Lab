noStud <- 10
num_courses <- 2
usn <- c()
student_records <- list()
student_names <- c()
course_marks <- matrix(c(0))

for (i in 1:noStud){
  student_names[i] = readline("Enter name: ")
  course_marks[i] = readline(cat("Enter",num_courses,"marks"))
}
print(student_names)

for (student_index in 1:num_students) {
  student_name <- student_names[student_index]
  total_marks <- sum(course_marks[student_index, ])
  average_marks <- total_marks / num_courses
  grade <- ifelse(average_marks >= 90, "A",
                  ifelse(average_marks >= 80,"B",
                         ifelse(average_marks >= 70, "C",
                                ifelse(average_marks >= 60, "D", "F"))))
  student_record <- list(name = student_name, marks = course_marks[student_index, ],
                         total = total_marks, average = average_marks, grade = grade)
  student_records <- c(student_records, list(student_record))
}

cat("\nStudent Grade Report:\n")
for (student_record in student_records) {
  cat("\nName:", student_record$name, "\n")
  cat("Marks:", student_record$marks, "\n")
  cat("Total Marks:", student_record$total, "\n")
  cat("Average Marks:", student_record$average, "\n")
  cat("Grade:", student_record$grade, "\n")
}
