# Lists
empId = c(1,2,3,4)
empName = c("John","Peter","Kohl","Mark")
numOfEmp = 4
empList = list(
  "ID" = empId,
  "Names" = empName,
  "Tot_Staff" = numOfEmp
)
print(empList)

# Accessing components by names
cat("Accessing name components using $ command \n")
print(empList$Names)

list_data <- list("Red","green",c(21,32,11),TRUE,51.23,119.1)
print(list_data)


list_data <- list(c("Jan","Feb","Mar"),
             matrix(c(3,9,5,1,-2,8),nrow = 2),
             list("green",12.3))
# Give names to the elements in the list
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")
# Show the list
print(list_data)
