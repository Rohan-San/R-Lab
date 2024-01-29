library(readr)
library(dplyr)
set.seed(42)

customer_ids <- 1:100
# Generating 100 Random numbers from 10 to 200.
purchase_amounts <- runif(100, min = 10, max = 200)
dummy_data <- data.frame(
  Customer_ID = customer_ids,
  Purchase_Amount = purchase_amounts
)

# Writing into a CSV file customer_purchases.csv
write.csv(dummy_data, "customer_purchases.csv", row.names = FALSE)
purchase_data <- read_csv("customer_purchases.csv")
total_records <- nrow(purchase_data)
total_unique_customers <- n_distinct(purchase_data$Customer_ID)
cat("Total number of records:", total_records, "\n")
cat("Total number of unique customers:", total_unique_customers, "\n")

mean_purchase_amount <- mean(purchase_data$Purchase_Amount)
median_purchase_amount <- median(purchase_data$Purchase_Amount)
std_dev_purchase_amount <- sd(purchase_data$Purchase_Amount)
cat("Mean purchase amount:", mean_purchase_amount, "\n")
cat("Median purchase amount:", median_purchase_amount, "\n")
cat("Standard deviation of purchase amounts:", std_dev_purchase_amount, "\n")

#Creating a new column called segment.
purchase_data$Segment <- ifelse(purchase_data$Purchase_Amount < median_purchase_amount, "Low Spender", "High Spender")
print(purchase_data)
hist(purchase_data$Purchase_Amount, main = "Distribution of Purchase Amounts", xlab = "Purchase Amount", col = "blue", border = "black")

# Output:
# Rows: 100 Columns: 2                                                                           
# ── Column specification ───────────────────────────────────────────────────────────────────────
# Delimiter: ","
# dbl (2): Customer_ID, Purchase_Amount

# ℹ Use `spec()` to retrieve the full column specification for this data.
# ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
# Total number of records: 100 
# Total number of unique customers: 100 
# Mean purchase amount: 109.651 
# Median purchase amount: 112.5457 
# Standard deviation of purchase amounts: 57.36991 
# # A tibble: 100 × 3
#    Customer_ID Purchase_Amount Segment     
#          <dbl>           <dbl> <chr>       
#  1           1           184.  High Spender
#  2           2           188.  High Spender
#  3           3            64.4 Low Spender 
#  4           4           168.  High Spender
#  5           5           132.  High Spender
#  6           6           109.  Low Spender 
#  7           7           150.  High Spender
#  8           8            35.6 Low Spender 
#  9           9           135.  High Spender
# 10          10           144.  High Spender
# # ℹ 90 more rows
# # ℹ Use `print(n = ...)` to see more rows
# Graph attached in README.md
