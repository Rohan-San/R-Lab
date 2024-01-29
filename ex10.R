library(dplyr)

df <- data.frame(
  STDID = c(501,502,503,504,505),
  Name = c("Yash","Davin","Rohan","Kshitij","Surya"),
  Age = c(21,19,20,22,21),
  Fees = c(69696,69000,69420,42000,61900),
  Branch = c("Finance","IT","HR","QualityControl","Production")
)

filtered_data <- filter(df,Age>20)
selected_columns <- select(df, STDID, Name, Fees)
mutated_data <-mutate(df,Fees_Adjusted=Fees*1.1)
grouped_data <- group_by(df,Branch)
summarized_data <- summarize(grouped_data, Avg_fee = mean(Fees),Max_Age=max(Age))
arranged_data <- arrange(df,Age,desc(Fees))

df2 <- data.frame(
  STDID =c(503,504,505),
  Hike=c(2000,3000,5000)
)

joined_data <- left_join(df,df2,by="STDID")
print("Filtered Data:")
print(filtered_data)
print("Selected Columns:")
print(selected_columns)
print("Mutated Data:")
print(mutated_data)
print("Summarized Data:")
print(summarized_data)
print("Arranged Data:")
print(arranged_data)
print("Joined Data:")
print(joined_data)

# Output:
# [1] "Filtered Data:"
#   STDID    Name Age  Fees         Branch
# 1   501    Yash  21 69696        Finance
# 2   504 Kshitij  22 42000 QualityControl
# 3   505   Surya  21 61900     Production
# [1] "Selected Columns:"
#   STDID    Name  Fees
# 1   501    Yash 69696
# 2   502   Davin 69000
# 3   503   Rohan 69420
# 4   504 Kshitij 42000
# 5   505   Surya 61900
# [1] "Mutated Data:"
#   STDID    Name Age  Fees         Branch Fees_Adjusted
# 1   501    Yash  21 69696        Finance       76665.6
# 2   502   Davin  19 69000             IT       75900.0
# 3   503   Rohan  20 69420             HR       76362.0
# 4   504 Kshitij  22 42000 QualityControl       46200.0
# 5   505   Surya  21 61900     Production       68090.0
# [1] "Summarized Data:"
# # A tibble: 5 × 3
#   Branch         Avg_fee Max_Age
#   <chr>            <dbl>   <dbl>
# 1 Finance          69696      21
# 2 HR               69420      20
# 3 IT               69000      19
# 4 Production       61900      21
# 5 QualityControl   42000      22
# [1] "Arranged Data:"
#   STDID    Name Age  Fees         Branch
# 1   502   Davin  19 69000             IT
# 2   503   Rohan  20 69420             HR
# 3   501    Yash  21 69696        Finance
# 4   505   Surya  21 61900     Production
# 5   504 Kshitij  22 42000 QualityControl
# [1] "Joined Data:"
#   STDID    Name Age  Fees         Branch Hike
# 1   501    Yash  21 69696        Finance   NA
# 2   502   Davin  19 69000             IT   NA
# 3   503   Rohan  20 69420             HR 2000
# 4   504 Kshitij  22 42000 QualityControl 3000
# 5   505   Surya  21 61900     Production 5000
