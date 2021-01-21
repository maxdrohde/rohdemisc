theme_rohde <- function(font_size = 12, font_family = "Lato"){
  #' Personal plotting function
  #'
  #' @param font_size
  #' @param font_family
  #'
  #' @return ggplot2 plot
  #' @export
  #'
  #' @examples

  cowplot::theme_cowplot(font_size = font_size,
                         font_family = font_family) %+replace%
    theme(strip.background = element_rect(fill = "transparent", colour = NA),
          strip.text = element_text(face="bold", margin = margin(1,0,1,0, "lines")),
          panel.background = element_rect(fill = "white"))

}
