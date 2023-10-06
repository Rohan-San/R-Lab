# 4. Take name and age input from user and display values.
# Also print R version

x <- as.character(readline("Enter name: "))
y <- as.integer(readline("Enter age: "))

print(paste("My name is", x, "and I am", y, "years old.\n"))
print(sprintf("My name is %s and I am %d years old.\n", x, y))
cat(R.version.string, "\n")
