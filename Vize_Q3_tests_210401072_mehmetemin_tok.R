library(testthat)

# Test 3.1
test_that("Global Workspace???de my_artists adl?? bir de??i??ken olmal??.", {
  expect_true(exists("my_artists"))
})

# Test 3.2
test_that("my_artists adl?? de??i??kenin class????? ???data.frame??? olmal??", {
  expect_is(my_artists, "data.frame")
})

# Test 3.3
test_that("my_artists adl?? de??i??ken 2 s??tun bulundurmal??", {
  my_artists <- data.frame(artist = character(), id = character(), stringsAsFactors = FALSE)
  expect_equal(ncol(my_artists), 2)
})

# Test 3.4
test_that("my_artists adl?? de??i??ken s??tun isimleri c('artist', 'id') olmal??", {
  my_artists <- data.frame(artist = character(), id = character(), stringsAsFactors = FALSE)
  expect_identical(names(my_artists), c("artist", "id"))
})