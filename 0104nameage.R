# 4. Take name and age input from user and display values.
# Also print R version

x <- as.character(readline("Enter name: "))
y <- as.integer(readline("Enter age: "))

cat("Name is", x, "and age is", y, ".\n")
cat(R.version.string, "\n")
