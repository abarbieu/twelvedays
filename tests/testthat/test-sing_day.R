context("sing_day")

xmas2 <- read.csv("https://www.dropbox.com/s/ap2hqssese1ki4j/xmas_2.csv?dl=1")
xmas2 <- xmas2 %>% mutate(
  Full.Phrase = unlist(pmap(xmas2,
                            ~make_phrase(..1, ..2, ..3,
                                         ..4, ..5, ..6)))
)

test_that("day is properly sung and make phrase works properly", {
  expect_equal(sing_day(xmas2, 12, Full.Phrase),
"Show in New Window
On the twelfth of Christmas, my true love gave to me:
twelve hour sleeping,
eleven friend goodbye-ing,
ten load of laundry,
nine party bumping,
eight mom a-calling,
seven senior stressing,
six grader grading,
five practice exam,
four course review,
three lost pen,
two meal point
and a email from Cal Poly")
})
