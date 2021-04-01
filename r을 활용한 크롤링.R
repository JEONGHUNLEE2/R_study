#R을 활용한 웹크롤링

library(tidyverse)
library(httr)
library(rvest)
library(jsonlite)

res <- GET(
  url = "http://ncov.mohw.go.kr",
  path = "/bdBoardList_Real.do",
  qurey = list("brdId" = "1",
               "brdGubun" = "11")
)
print(res)
#22분부터 집에서보기