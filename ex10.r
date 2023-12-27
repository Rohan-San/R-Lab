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
