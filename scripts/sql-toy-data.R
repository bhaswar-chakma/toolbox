library(tidyverse)
student_id <- c('S1', 'S2',
                'S7', 'S8')
name <- c('Barney', 'Robin',
          'Sheldon', 'Penny')
gender <- c('Male', 'Female',
            'Male', 'Female')
grade <- c(18, 11, 20, 13)

students <- tibble(
  student_id, name,
  gender, grade
)

knitr::kable(students)

students %>%
  filter(
    name == 'Sheldon' |
    gender == 'Female'
  )

students <- students %>% slice(1:3)

students %>%
  arrange(desc(name))
