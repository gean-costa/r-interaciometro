library(rtweet)
library(dplyr)
library(forcats)
library(ggplot2)

get_token()

source('top_users_liked.R')
# criação do dataframe com os dados das curtidas
df1 <- top_users_liked(screen_name = "@SCREEN_NAME")
# plotagem do gráfico com o ranking de perfis mais curtidos
plot_top_users_liked(df1)