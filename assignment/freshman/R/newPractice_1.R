1.
View(mtcars)
str(mtcars)
dim(mtcars)
ls(mtcars)

2.
install.packages("dplyr")
library(dplyr)

3.
mtcars %>% filter(cyl==4)
filter(mtcars, cyl==4)

4.
mtcars %>% filter(cyl>=6 & mpg>20)
filter(mtcars, cyl>=6 & mpg>20)

5.
mtcars %>% arrange(wt) %>% head				#head, head() 둘 다 가능
head(arrange(mtcars, wt))

6.
mtcars %>% arrange(mpg, desc(wt)) %>% head
head(arrange(mtcars, mpg, desc(wt)))

7.
mtcars %>% select(am, gear) %>% head
head(select(mtcars, am, gear))

8.
mtcars %>% mutate(year="1974")
mutate(mtcars, year=="1974")

9.
mtcars %>% summarise(mean(cyl),min(cyl),max(cyl))	#summarize, summarise 둘 다 가능

10.
mtcars %>% group_by(cyl) %>% summarise(n=n())		
summarise(group_by(mtcars, cyl), cyl_n=n())