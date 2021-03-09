[1mdiff --git a/life_exp_analysis_shell.Rmd b/life_exp_analysis_shell.Rmd[m
[1mindex 0a41d36..00a9d52 100644[m
[1m--- a/life_exp_analysis_shell.Rmd[m
[1m+++ b/life_exp_analysis_shell.Rmd[m
[36m@@ -16,4 +16,24 @@[m [mknitr::opts_chunk$set(echo = TRUE)[m
 [m
 Here, I re-examine the analysis of Oeppen and Vaupel (2002).[m
 [m
[31m-# Analysis[m
[32m+[m[32m# Life Expectancy Analysis[m
[32m+[m
[32m+[m
[32m+[m[32m```{r}[m
[32m+[m[32mlibrary(tidyverse)[m
[32m+[m[32mlibrary(gapminder)[m
[32m+[m
[32m+[m[32mdata("gapminder_unfiltered")[m
[32m+[m[32mhead(gapminder_unfiltered)[m
[32m+[m
[32m+[m[32mgapminder_unfiltered %>%[m
[32m+[m[32m  group_by(year) %>%[m
[32m+[m[32m  filter(lifeExp == max(lifeExp)) %>%[m
[32m+[m[32m  ungroup() %>%[m
[32m+[m[32m  select(year, country, lifeExp) %>%[m
[32m+[m[32m  arrange(year) -> sumdat[m
[32m+[m
[32m+[m[32msumdat[m
[32m+[m
[32m+[m[32m```[m
[41m+[m
