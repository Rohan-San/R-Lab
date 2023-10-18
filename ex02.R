#Incomplete
noStud <- readline("Enter number of students: ")
num_courses <- readline("Enter number of courses: ")

student_records <- list()
student_names <- c()
usn <- c()
course_marks <- matrix(c(0))

for (i in 1:noStud){
  student_names[i] = readline("Enter name: ")
  #course_marks[i] = readline(cat("Enter",num_courses,"marks"))
}

for (i in 1:noStud){
  usn[i] = readline("Enter USN: ")
}

for (student_index in 1:noStud) {
  student_name <- student_names[student_index]
  total_marks <- sum(course_marks[student_index, ])
  average_marks <- total_marks / num_courses
  student_usn <- usn[student_index]
  grade <- ifelse(average_marks >= 90, "A",
                  ifelse(average_marks >= 80,"B",
                         ifelse(average_marks >= 70, "C",
                                ifelse(average_marks >= 60, "D", "F"))))
  student_record <- list(name = student_name, usn =  student_usn, marks = course_marks[student_index, ],
                         total = total_marks, average = average_marks, grade = grade)
  student_records <- c(student_records, list(student_record))
}

cat("\nStudent Grade Report:\n")
for (studRecord in student_records) {
  cat("\nName:", studRecord$name, "\n")
  cat("Marks:", studRecord$usn, "\n")
  cat("Marks:", studRecord$marks, "\n")
  cat("Total Marks:", studRecord$total, "\n")
  cat("Average Marks:", studRecord$average, "\n")
  cat("Grade:", studRecord$grade, "\n")
}
