# 4. Take name and age input from user and display values.
# Also print R version

x <- as.character(readline("Enter name: "))
y <- as.integer(readline("Enter age: "))

cat("Name is", x, ".\n")
cat("Age is", y, ".\n")
cat(R.version.string, "\n")
