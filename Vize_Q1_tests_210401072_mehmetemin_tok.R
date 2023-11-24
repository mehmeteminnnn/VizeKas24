# testthat paketini yükleyin
library(testthat)

# Spotify API token fonksiyonunu içe aktarın
current_dir <- getwd()
relative_path <- paste(current_dir, "/Labex2_Q1_210401072_mehmetemin_tok.R", sep = "")
source(relative_path)

# test_spotify_token.R

context("Testing spotify_token function")

# Test 1.1
test_that("Global Workspace’de spotify_token adlı bir değişken mevcut.", {
  expect_true(exists("spotify_token"))
})