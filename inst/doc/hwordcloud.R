## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE, include=TRUE--------------------------------------------
#  devtools::install_github('czxa/hwordcloud')
#  # or just use git
#  devtools::install_git("https://github.com/czxa/hwordcloud.git")

## ----eval=FALSE, include=TRUE--------------------------------------------
#  dir <- system.file("examples", "hwordcloud", package = "hwordcloud")
#  setwd(dir)
#  shiny::shinyAppDir(".")

## ----echo=TRUE-----------------------------------------------------------
library(hwordcloud)
library(wordcloud2)
df <- head(demoFreq, 50)
hwordcloud(text = df$word, size = df$freq, 
           width = "100%", height = "200px")

## ----echo=TRUE-----------------------------------------------------------
hwordcloud(text = df$word, size = df$freq, 
           width = "100%", height = "300px",
           theme = "darkgreen")

## ----echo=TRUE-----------------------------------------------------------
hwordcloud(text = df$word, size = df$freq, 
           width = "100%", height = "300px",
           theme = "darkblue")

## ----echo=TRUE-----------------------------------------------------------
hwordcloud(text = df$word, size = df$freq, 
           width = "100%", height = "300px",
           theme = "avocado")

## ----echo=TRUE-----------------------------------------------------------
hwordcloud(text = df$word, size = df$freq, 
           width = "100%", height = "300px",
           theme = "darkunica")

## ----echo=TRUE-----------------------------------------------------------
hwordcloud(text = df$word, size = df$freq, 
           width = "100%", height = "300px",
           theme = "gray")

## ----echo=TRUE-----------------------------------------------------------
hwordcloud(text = df$word, size = df$freq, 
           width = "100%", height = "300px",
           theme = "gridlight")

## ----echo=TRUE-----------------------------------------------------------
hwordcloud(text = df$word, size = df$freq, 
           width = "100%", height = "300px",
           theme = "grid")

## ----echo=TRUE-----------------------------------------------------------
hwordcloud(text = df$word, size = df$freq, 
           width = "100%", height = "300px",
           theme = "sandsignika")

## ----echo=TRUE-----------------------------------------------------------
hwordcloud(text = df$word, size = df$freq, 
           width = "100%", height = "300px",
           theme = "sunset")

## ----echo=TRUE-----------------------------------------------------------
hwordcloud(text = df$word, size = df$freq, 
           width = "100%", height = "200px",
           theme = "sunset",
           title = "Word Cloud",
           titleAlign = "center",
           titleColor = "#333333",
           titleSize = "20px",
           subtitle = "czxa.top",
           subtitleColor = "#666666",
           subtitleAlign = "center",
           subtitleSize = "16px")

## ----eval=FALSE----------------------------------------------------------
#  hwordcloud(text = df$word, size = df$freq,
#                 width = "100%", height = "400px",
#                 theme = "sunset",
#                 title = "Word Cloud",
#                 titleAlign = "center",
#                 titleColor = "#333333",
#                 titleSize = "20px",
#                 subtitle = "czxa.top",
#                 subtitleColor = "#666666",
#                 subtitleAlign = "center",
#                 subtitleSize = "16px")

## ----eval=FALSE----------------------------------------------------------
#  library(shiny)
#  library(wordcloud2)
#  ui <- fluidPage(
#      titlePanel("word cloud example"),
#      mainPanel(
#        hwordcloudOutput("shinytest", height = "500px")
#      )
#  )
#  server <- function(input, output) {
#      df <- head(demoFreq, 50)
#      output$shinytest <- renderHwordcloud({
#          hwordcloud(text = df$word, size = df$freq)
#      })
#  }
#  shinyApp(ui = ui, server = server)

