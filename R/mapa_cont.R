#' @title Mapa z terytorialnym rozkładem \strong{zmiennej ciągłej} na poziomie
#' powiatów
#' @description Funkcja łączy ramkę danych zawierającą kształty (shape'y)
#' powiatów z dowolną ramką danych zawierającą zmienną \code{teryt_powiat} -
#' właśnie po tej zmiennej, a następnie zwraca wykres w formie mapy z rozkładem
#' zmiennej ciągłej. Obszary powiatów kolorowane są gradientem w zależności od
#' wartości zmiennej.
#' @param x ramka danych ze wskaźnikami zagregowanymi na poziomie powiatów
#' @param mapping nazwa zmiennej, której rozkład ma być przedstawiony na
#' wykresie
#' @param teryt_var nazwa zmiennej zawierająca numer teryt powiatu w formie trzy- lub
#' czterocyfrowej ze zbioru danych przekazanego do argumentu \code{x}
#' @importFrom ggplot2 ggplot
#' @importFrom dplyr left_join mutate_if
#' @importFrom rlang ensym as_name
#' @export
mapa_powiat_cont = function(x, mapping, teryt_var) {
  mapping = ensym(mapping)
  teryt_var = ensym(teryt_var)

  stopifnot(is.data.frame(x),
            !is.list(mapping))

  # spłaszczona ramka danych daje kolumny klasy hvnlbl
  x = x %>%
    mutate_if(is.numeric, as.numeric) %>% # zmieniam klasę na dbl
    mutate_if(is.character, as.character) # zmieniam klasę na chr

  get("powiatyShape")
  x = powiatyShape %>%
    left_join(x,
              by = c("jpt_kod_je" = as_name(teryt_var)))

  chart = ggplot(data = x) +
    geom_sf(aes(fill = !!mapping)) +
    scale_fill_distiller(palette = "RdPu", direction = 1) +
    theme(axis.line = element_blank(),
          axis.text.x = element_blank(),
          axis.text.y = element_blank(),
          axis.ticks = element_blank())
  return(chart)
}
#' @title Mapa z terytorialnym rozkładem \strong{zmiennej ciągłej} na poziomie
#' województw
#' @description Funkcja łączy ramkę danych zawierającą kształty (shape'y)
#' województw z dowolną ramką danych zawierającą zmienną \code{teryt_woj} -
#'  właśnie po tej zmiennej, a następnie zwraca wykres w formie mapy z rozkładem
#' zmiennej ciągłej. Obszary województw kolorowane są gradientem w zależności od
#' wartości zmiennej.
#' @param x ramka danych ze wskaźnikami zagregowanymi na poziomie województw
#' @param mapping nazwa zmiennej, której rozkład ma być przedstawiony na
#' wykresie
#' @param teryt_var nazwa zmiennej zawierająca numer teryt województwa w formie
#' dwuocyfrowej ze zbioru danych przekazanego do argumentu \code{x}
#' @importFrom ggplot2 ggplot
#' @importFrom dplyr left_join mutate_if
#' @importFrom rlang ensym as_name
#' @export
mapa_woj_cont = function(x, mapping, teryt_var) {
  mapping = ensym(mapping)
  teryt_var = ensym(teryt_var)

  stopifnot(is.data.frame(x),
            !is.list(mapping))

  # spłaszczona ramka danych daje kolumny klasy hvnlbl
  x = x %>%
    mutate_if(is.numeric, as.numeric) %>% # zmieniam klasę na dbl
    mutate_if(is.character, as.character) # zmieniam klasę na chr

  get("wojShape")
  x = wojShape %>%
    left_join(x,
              by = c("jpt_kod_je" = as_name(teryt_var)))

  chart = ggplot(data = x) +
    geom_sf(aes(fill = !!mapping)) +
    scale_fill_distiller(palette = "RdPu", direction = 1) +
    theme(axis.line = element_blank(),
          axis.text.x = element_blank(),
          axis.text.y = element_blank(),
          axis.ticks = element_blank())
  return(chart)
}
