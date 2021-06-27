library(tidyverse)
penguins <- read_csv("penguins.csv")

penguins %>% count(species) %>% ggplot(aes(reorder(species, -n), n, fill= species))+geom_col(show.legend = F, width = 0.4)+theme_classic()+labs(y = "Number of Penguins", x = "Species")

ggsave("images/p1.png")


penguins %>% ggplot(aes(x = flipper_length_mm))+geom_histogram(binwidth = 10, fill = "#468BB4")+theme_classic()+ labs(x = "Flipper length (mm)", y = NULL)

ggsave("images/p2.png")


penguins %>% ggplot(aes(x =bill_depth_mm,y = bill_length_mm))+geom_point()+theme_classic()+ labs(x = "Bill depth (mm)", y = "Bill length (mm)")

ggsave("images/p3.png")



penguins %>% ggplot(aes(x =species, y = body_mass_g, fill =species))+geom_boxplot(show.legend = F)+theme_classic()+ labs(x = "Species", y = "Body mass (g)")

ggsave("images/p5.png")

