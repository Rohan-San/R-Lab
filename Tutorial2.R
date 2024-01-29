# 3. Check whether positive, negative or zero

x <- as.integer(readline("Enter a number: "))

if (x == 0)
{
  cat(x, "is zero.")
} else if (x < 0) 
{
  cat(x, "is negative.")
} else 
{
  cat(x, "is positive.")
}

# 4. Take name and age input from user and display values.
# Also print R version

x <- as.character(readline("Enter name: "))
y <- as.integer(readline("Enter age: "))

print(paste("My name is", x, "and I am", y, "years old.\n"))
print(sprintf("My name is %s and I am %d years old.\n", x, y))
cat(R.version.string, "\n")

# 5.
name = "Python"; 
n1 =  10; 
n2 =  0.5
nums = c(10, 20, 30, 40, 50, 60)
print(ls())
print("Details of the objects in memory:")
print(ls.str())
