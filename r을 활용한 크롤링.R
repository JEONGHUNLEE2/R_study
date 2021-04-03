#R을 활용한 웹크롤링

library(tidyverse)
library(httr)
library(rvest)
library(jsonlite)

# & 표시 되어있는걸 보기 좋게 하기 위해서 ","로 변경해줬고
# 
res <- GET(
  url = "http://ncov.mohw.go.kr",
  path = "/bdBoardList_Real.do",
  qurey = list("brdId" = "1",
               "brdGubun" = "11")
)
print(res)
class(x = res)

#window 사용자만 
#Sys.setlocale(category = "LC_ALL",locale = 'C')

tbl <- res %>% 
  read_html() %>% 
  html_node(css = 'div.data_table.mgt16 > table.num') %>% 
  html_table(fill = TRUE)

#Sys.setlocale(category = "LC_ALL",locale = 'korean')

