# This is how comments work
# print('Hello World!')

# Variable - Letters, digits, periods, underscores. Starts with letter or period.
X <- 23 # Equal to symbol works, but this symbol is preferred for assignment
#print(x)
#print(class(x))

a = TRUE #Boolean Variable
#print(a)
#print(class(a))

b = 14L #Integer variable
#print(b)
#print(class(b))

c = 14 # Numeric variable
#print(c)
#print(class(c))

d = 13.4 # Floating type variable
#print(d)
#print(class(d))

e <- 3 + 2i # Complex data type
#print(e)
#print(class(e))

alpha <- "Alphabets" # Character variable
#print(alpha)
#print(class(alpha))

n <- NULL # Declaring an empty null object
#print(n)
#print(class(n))

#print(0/0) #NaN
#print(Inf/Inf) #NaN

# Built-in constants
#print(LETTERS) # Gives all upper case alphabets
#print(letters) # Gives all lower case alphabets
#print(month.abb) # Gives all abbreviated month names
#print(month.name) # Gives full names of all months
#print(pi)

ctr <- charToRaw("Welcome")
print(ctr) # Gives ASCII values of each letter in string

rtc <- rawToChar(ctr)
print(rtc)

# R doesn't allow multiple outputs in same print statement, so we use paste or cat
print(paste("Result of rtc is", rtc))
cat("Result of rtc is", rtc)
print(" ")

# Relational operators are common

#Arithmetic Operators (Uncommon)
x <- 100
y <- 5
z <- 3
print(x%%z)
