top_users_liked <- function(screen_name){
  
  # coletar os tweets curtidos do perfil indicado
  tweets_liked <- get_favorites(user = screen_name, n = 3000)
  
  # criar um dataframe 
  df <- tweets_liked$screen_name %>% table %>% data.frame
  
  # (re)nomeando as colunas do dataframe
  colnames(df) <- c("user", "num_likes")
  
  return(df)
}

plot_top_users_liked <- function(dataframe, n = 10){
 
  # etapa necessária para ordenação correta no ggplot
  dataframe$user <- factor(dataframe$user) %>% 
    fct_reorder(dataframe$num_likes)
  
  # plotar o gráfico com os n perfis mais curtidos pelo perfil indicado
  g <- dataframe[order(dataframe$num_likes, decreasing = TRUE), ][1:n,] %>%
    ggplot() + geom_col(aes(x = num_likes, y = user))
  
  return(g)
  
}
