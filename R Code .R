library(dplyr)
library(ggplot2)
movements <- rio::import(file = "categories.xls")

library(lubridate)
movements %>%
  mutate(date_new = as.Date(movements$Date, origin = "1899-12-30")) %>%
  mutate(day_of_week = wday(date_new)) %>%
  mutate(month = month(date_new)) -> movements_clean

movements_clean %>%
  group_by(month) %>%
  summarise(number_of_movements = n(),
            sum_of_entries = sum (Income, na.rm = TRUE),
            sum_of_expenses = sum (Expenditure, na.rm = TRUE)) -> monthly_summary





monthly_summary %>%
  ggplot(aes(x = month ,y = number_of_movements)) +
  geom_bar(stat = 'identity') +
  coord_flip()


monthly_summary %>%
  ggplot(aes(x = month ,y = sum_of_expenses)) +
  geom_bar(stat = 'identity') +
  coord_flip()


monthly_summary %>%
  ggplot(aes(x = month ,y = sum_of_entries)) +
  geom_bar(stat = 'identity') +
  coord_flip()



