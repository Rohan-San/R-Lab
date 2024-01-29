# Constants
num_students <- 10
num_courses <- 5

# Predefined student names
student_names <- c("John", "Anna", "Tim", "Harry", "Pal", "Jim", "Peter", "Bob", " Cook", "James")

# Predefined course marks for each student
course_marks <- matrix(c(
  85, 92, 78, 88, 95, 88, 89, 78,77,81,
  75, 80, 85, 70, 60, 90, 67, 70,89,87,
  100, 78, 56, 34, 56, 45, 78, 97,66,89,
  78, 45, 67, 89, 90, 56, 89, 67,99,98,
  89,80,67,78,90, 67, 78,90, 78, 78
), nrow = num_students, byrow = TRUE)

# Initialize a list to store student information
student_records <- list()

# Loop for each student
for (student_index in 1:num_students) {
  student_name <- student_names[student_index]
  
  # Initialize variables for calculations
  total_marks <- sum(course_marks[student_index, ])
  average_marks <- total_marks / num_courses
  
  # Determine grade based on average marks
  grade <- ifelse(average_marks >= 90, "A",
                  ifelse(average_marks >= 80,"B",
                         ifelse(average_marks >= 70, "C",
                                ifelse(average_marks >= 60, "D", "F"))))
  
  # Store student information in a record
  student_record <- list(name = student_name,
                         marks = course_marks[student_index, ],
                         total = total_marks,
                         average = average_marks,
                         grade = grade)
  
  student_records <- c(student_records, list(student_record))
}

# Display student information
cat("\nStudent Grade Report:\n")
for (student_record in student_records) {
  cat("\nName:", student_record$name, "\n")
  cat("Marks:", student_record$marks, "\n")
  cat("Total Marks:", student_record$total, "\n")
  cat("Average Marks:", student_record$average, "\n")
  cat("Grade:", student_record$grade, "\n")
}

# Output:
# Student Grade Report:

# Name: John 
# Marks: 85 92 78 88 95 
# Total Marks: 438 
# Average Marks: 87.6 
# Grade: B 

# Name: Anna 
# Marks: 88 89 78 77 81 
# Total Marks: 413 
# Average Marks: 82.6 
# Grade: B 

# Name: Tim 
# Marks: 75 80 85 70 60 
# Total Marks: 370 
# Average Marks: 74 
# Grade: C 

# Name: Harry 
# Marks: 90 67 70 89 87 
# Total Marks: 403 
# Average Marks: 80.6 
# Grade: B 

# Name: Pal 
# Marks: 100 78 56 34 56 
# Total Marks: 324 
# Average Marks: 64.8 
# Grade: D 

# Name: Jim 
# Marks: 45 78 97 66 89 
# Total Marks: 375 
# Average Marks: 75 
# Grade: C 

# Name: Peter 
# Marks: 78 45 67 89 90 
# Total Marks: 369 
# Average Marks: 73.8 
# Grade: C 

# Name: Bob 
# Marks: 56 89 67 99 98 
# Total Marks: 409 
# Average Marks: 81.8 
# Grade: B 

# Name:  Cook 
# Marks: 89 80 67 78 90 
# Total Marks: 404 
# Average Marks: 80.8 
# Grade: B 

# Name: James 
# Marks: 67 78 90 78 78 
# Total Marks: 391 
# Average Marks: 78.2 
# Grade: C 
