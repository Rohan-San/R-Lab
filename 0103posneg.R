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
