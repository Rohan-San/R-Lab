# Load required libraries
library(forecast)

# Create a data frame with Month and Sales columns
sales_data <- data.frame(
  Month = seq(as.Date("2023-01-01"), as.Date("2023-06-01"), by = "months"),
  Sales = c(12000, 15000, 18000, 16000, 20000, 22000)
)

# Convert to time series
sales_ts <- ts(sales_data$Sales, frequency = 12,start=c(2023,1))
print(sales_ts)

# Fit ARIMA model
arima_model <- auto.arima(sales_ts)

# Forecast sales for next 3 months
forecast_result <- forecast(arima_model, h = 3)

# Display forecast results
print(forecast_result)
plot(forecast_result)

# Output:
#        Jan   Feb   Mar   Apr   May   Jun
# 2023 12000 15000 18000 16000 20000 22000
#          Point Forecast    Lo 80    Hi 80    Lo 95    Hi 95
# Jul 2023          22000 18285.70 25714.30 16319.47 27680.53
# Aug 2023          22000 16747.19 27252.81 13966.52 30033.48
# Sep 2023          22000 15566.65 28433.35 12161.04 31838.96
# Graph attached in README.md
