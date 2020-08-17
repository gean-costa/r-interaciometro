library(rtweet)

api_key <- "API_KEY"
api_secret_key <- "API_SECRET_KEY"
access_token <- "ACCESS_TOKEN"
access_token_secret <- "ACCESS_TOKEN_SECRET"

token <- create_token(app = "APP_NAME",
                      consumer_key = api_key,
                      consumer_secret = api_secret_key,
                      access_token = access_token,
                      access_secret = access_token_secret)
