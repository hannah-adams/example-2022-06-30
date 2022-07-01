library(tidyverse)
graph <-read_rds("rawdata.rds")

my_plot <- graph |> 
  ggplot(aes(x = year)) +
  geom_bar() +
  labs(title = "Baseball Hall of Fame Inductions",
       subtitle = "Spike in 2006 associated with Negro League inclusion",
       x = "Year",
       y = "Number of Inductees",
       caption = "Data: Wikipedia")

ggsave("fame_plot.png", my_plot)
