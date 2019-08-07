#' @title hwordcloud: Rendering word clouds using R + Highcharts
#'
#' @description This function can create wordclouds by binding R and Highcharts.
#'
#' @import htmlwidgets
#'
#' @param text character vector;
#' @param size numeric vector;
#' @param width chart width, for example, "100\%";
#' @param height chart height, for example, "400px";
#' @param theme chart theme, you can use these themes:
#' darkgreen/darkblue/avocado/darkunica/gray/
#' gridlight/grid/sandsignika/sunset;
#' @param itermName attribute in tooltip;
#' @param title title;
#' @param titleAlign title alignment, left/center/right;
#' @param titleSize title size, like "20px";
#' @param titleColor title color, like "#333333";
#' @param subtitle subtitle;
#' @param subtitleAlign subtitle alignment, left/center/right;
#' @param subtitleSize subtitle size, like "16px";
#' @param subtitleColor subtitle color, like "#666666"
#'
#' @examples
#' library(hwordcloud)
#' library(wordcloud2)
#' df <- head(demoFreq, 50)
#' if(interactive()){
#'    hwordcloud(text = df$word, size = df$freq)
#' }
#'
#' @export
hwordcloud <- function(text,
                       size,
                       width = "100%",
                       height = NULL,
                       theme = "sandsignika",
                       itermName = "count",
                       title = "",
                       titleAlign = "center",
                       titleSize = "20px",
                       titleColor = "#333333",
                       subtitle = "",
                       subtitleAlign = 'center',
                       subtitleSize = "",
                       subtitleColor = "#666666") {

  x = list(
    text = text,
    size = size,
    theme = theme,
    itermName = itermName,
    title = title,
    titleAlign = titleAlign,
    titleSize = titleSize,
    titleColor = titleColor,
    subtitle = subtitle,
    subtitleAlign = subtitleAlign,
    subtitleSize = subtitleSize,
    subtitleColor = subtitleColor
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'hwordcloud',
    x,
    width = width,
    height = height,
    package = 'hwordcloud'
  )
}

#' Shiny bindings for hwordcloud
#'
#' Output and render functions for using hwordcloud within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a hwordcloud
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name hwordcloud-shiny
#'
#' @export
hwordcloudOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'hwordcloud', width, height, package = 'hwordcloud')
}

#' @rdname hwordcloud-shiny
#' @export
renderHwordcloud <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, hwordcloudOutput, env, quoted = TRUE)
}

#' hwordcloud package
#' @description Rendering word clouds using R + Highcharts
#' @section \code{\link{hwordcloud}}: Rendering word clouds using R + Highcharts
#' @docType package
#' @name hwordcloud
NULL
