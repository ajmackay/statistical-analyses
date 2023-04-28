# https://stats.oarc.ucla.edu/r/seminars/rcfa/

packages <- c('foreign', 'lavaan', 'dplyr')

librarian::shelf(packages)

dat <- read.spss("https://stats.idre.ucla.edu/wp-content/uploads/2018/05/SAQ.sav",
                 to.data.frame=TRUE, use.value.labels = FALSE) %>% as_tibble()


####
