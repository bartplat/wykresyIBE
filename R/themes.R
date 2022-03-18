#' @title Motyw wykorzystywany w publikacjach w projekcie Losy 2 (IBE)
#' @description Minimalistyczny motyw używany w raportach automatycznych w
#' projekcie Losy 2 w ramach IBE.
#' @export
ibe_theme = function() {
  theme(
    legend.position = "bottom",
    legend.justification = "left",
    legend.title = element_blank(),
    panel.background = element_rect(fill = "white"),
    axis.ticks.y = element_blank(),
    axis.ticks.x = element_blank(),
    plot.title.position = "plot",
    plot.title = element_text(size = 11)
  )
}
