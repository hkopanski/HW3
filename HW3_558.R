library(Lahman)
library(dplyr)
library(tidyr)

#1
str(Pitching)

df_pitching <- tbl_df(Pitching)

str(df_pitching)

print(head(df_pitching))

#2
df_pitching %>% select(ends_with("ID"), W, L, ERA)

#3

#4
df_pitching %>% mutate(WL_per = W / (W + L)) %>% 
  select(ends_with("ID"), W, L, ER, WL_per) %>% 
  filter(yearID >= 2010 & yearID <= 2015) %>% arrange(desc(WL_per))

#5
df_pitching %>% mutate(WL_per = W / (W + L)) %>% 
  select(ends_with("ID"), W, L, ER, WL_per) %>% 
  filter(yearID >= 2010 & yearID <= 2015) %>% arrange(desc(WL_per))