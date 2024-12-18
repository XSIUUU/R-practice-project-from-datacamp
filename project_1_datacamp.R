# Load necessary packages
library(readr)
library(dplyr)
library(ggplot2)

# Load the dataset
data <- read_csv("stack_overflow_data.csv")
print(data)

# codes for question 1
percentage_table <- data %>% 
  filter(tag=="r") %>%
  mutate(percentage=num_questions/year_total*100) %>%
  select(year,percentage)

r_over_time <- data %>% 
  left_join(percentage_table, by="year")

r_over_time

# codes for question 2
r_percentage <- r_over_time %>% 
  group_by(year) %>%
  summarise(percentage=max(percentage)) %>%
  filter(year == 2020) %>% 
  pull(percentage) %>%
  as.numeric()
r_percentage

# codes for question 3
highest_tags <- data %>% filter(year>=2015 & year<=2020) %>%
  group_by(tag) %>%
  summarise(total_questions=sum(num_questions)) %>%
  arrange(desc(total_questions)) %>%
  pull(tag)
highest_tags <- highest_tags[1:5]
highest_tags

# revise  of Q3
highest_tags <- data %>%
  filter(year >= 2015 & year <= 2020) %>%     
  group_by(tag) %>%                          
  summarise(total_questions = sum(num_questions), .groups = "drop") %>% 
  slice_max(total_questions, n = 5) %>%      
  pull(tag)                                  

print(highest_tags)