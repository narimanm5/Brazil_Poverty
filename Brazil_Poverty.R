df <- Copy_of_poverty_brazil
attach(df)
library(fastDummies)
df1 <- dummy_cols(df,select_columns = c("education","work","work_permit"),
                  remove_selected_columns = TRUE,
                  remove_most_frequent_dummy = TRUE)
colnames(df1)
fit <- glm(poverty ~ .,data = df1[1:24])
summary(fit)

