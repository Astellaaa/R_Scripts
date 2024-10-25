# 7장 웹-스크랩핑
install.packages("rvest")
library(rvest)

url = "D:/rScripts/영화1.html"
html = read_html(url, encoding ="utf-8")
html

movie = html_nodes(html, "table tr td")%>%
  html_text()

url = "D:/rScripts/영화2.html"
html = read_html(url, encoding ="utf-8")
html

# 현재 상영중인 영화목록
movie1 = html_nodes(html, "#movie1 tr td")%>%
  html_text()
movie1

#제목, 예매율(1,2데이터) 부분만 삭제해서 데이터 추출
movie1 = html_nodes(html, "#movie1 tr td")[c(-1, -2)]%>%
  html_text()
movie1