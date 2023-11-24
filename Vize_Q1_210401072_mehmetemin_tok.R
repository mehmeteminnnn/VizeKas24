library(httr)

# Spotify API token fonksiyonu
spotify_token <- function() {
  # Spotify API endpoint URL
  token_url <- "https://accounts.spotify.com/api/token"
  
  # Spotify API'ye erişim için gerekli bilgiler
  readRenviron("./.Renviron")
  client_id <- Sys.getenv("SPOTIFY_ID")
  client_secret <- Sys.getenv("SPOTIFY_SECRET")
  
  grant_type <- "client_credentials"
  
  # Token almak için POST isteği gönderme
  response <- POST(
    token_url,
    authenticate(client_id, client_secret),
    body = list(grant_type = grant_type),
    encode = "form"
  )
  
  # Extract status code
  status_code <- status_code(response)
  
  # Extract token
  token <- paste("Bearer", content(response)$access_token)
  # Return a list with status code and token
  return(list(status_code = status_code, token = token))
}

# Çağırma
token_info <- spotify_token()
print(token_info)

