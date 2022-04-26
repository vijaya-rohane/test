# libraries
library(tidyverse)

# read dataset
df <- read.csv(file='dataset/result_dataset.csv')
head(df)
glimpse(df)


# dimension
dim(df)

mutated_df<-df %>% 
  mutate(tags_new=strsplit(tags, "\\|")) %>%  
  unnest(tags_new)


write.csv(mutated_df,"dataset/mutated_df2.csv")