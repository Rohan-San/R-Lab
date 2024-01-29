library(ggplot2)
set.seed(123)

num_students <- 8
students <- data.frame(
  Name = c("Ramesh","Suresh","Mukesh","Rakesh","Dharmesh","Kamlesh","Hitesh","Sarvesh"),
  Scores = c(98,74,28,76,81,69,92,13), 
  Attendance = c(100,85,73,28,94,58,96,89)
)

scatter_plot <- ggplot(students, aes(x =Scores, y = Attendance)) +
  geom_point(color = "red") + 
  labs(title = "Scatter Plot - Scores vs Attendance", x = "Scores", y = "Attendance")

bar_plot <- ggplot(students, aes(x = Name, y = Scores)) +
  geom_bar(stat = "identity", fill = "orange") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Bar Plot - Distribution of Scores", x = "Student Names", y = "Scores")

students$Time <- seq_len(num_students)

line_plot <- ggplot(students, aes(x = Time, y = Scores, group = 1)) +
  geom_line(color = "purple") +
  labs(title = "Line Plot - Trend of Scores Over Time", x = "Time", y = "Scores")

histogram_plot <- ggplot(students, aes(x = Scores)) +
  geom_histogram(binwidth = 5, position = "identity", color = "cyan", fill = "darkgreen") +
  scale_fill_brewer(palette = "Set3") +
  labs(title = "Distribution of Scores", x = "Scores", y = "Frequency")

print(histogram_plot)

library(gridExtra)
grid.arrange(scatter_plot, bar_plot, line_plot, histogram_plot, ncol = 2)

# Output:
# Graph attached in README.md
