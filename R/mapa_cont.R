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
#' @param teryt_var nazwa zmiennej zawierająca numer teryt powiatu w formie
#' trzy- lub czterocyfrowej ze zbioru danych przekazanego do argumentu \code{x}
#' @importFrom ggplot2 ggplot geom_sf aes scale_fill_distiller theme
#' element_blank
#' @importFrom dplyr left_join mutate_if mutate %>%
#' @importFrom rlang ensym as_name
#' @importFrom sf st_multipolygon
#' @export
mapa_powiat_cont = function(x, mapping, teryt_var) {
  mapping = ensym(mapping)
  teryt_var = ensym(teryt_var)

  stopifnot(is.data.frame(x),
            !is.list(mapping))

  if(any(is.na(x[[teryt_var]]))) {
    warning("- Zmienna zawierająca kody TERYT posiada braki danych - wartości dla tych wierszy nie będą pokazane na wykresie\n", immediate. = TRUE)
  }

  if(any(grepl("sf", class(x))) == FALSE) {
    x = x %>%
      # spłaszczona ramka danych daje kolumny klasy hvnlbl
      mutate_if(is.numeric, as.numeric) %>% # zmieniam klasę na dbl
      mutate_if(is.character, as.character) %>% # zmieniam klasę na chr
      mutate(teryt_recoded = teryt_recode_pow(!!teryt_var))

    get("powiatyShape")
    x = powiatyShape %>%
      left_join(x,
                by = c("teryt" = "teryt_recoded"))
    message(paste("- Dołączono do zbioru", sum(!is.na(x[[mapping]])), "niepustych obserwacji\n"))
  }
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
#' @importFrom ggplot2 ggplot geom_sf aes scale_fill_distiller theme
#' element_blank
#' @importFrom dplyr left_join mutate_if mutate %>%
#' @importFrom rlang ensym as_name
#' @importFrom sf st_multipolygon
#' @export
mapa_woj_cont = function(x, mapping, teryt_var) {
  mapping = ensym(mapping)
  teryt_var = ensym(teryt_var)

  stopifnot(is.data.frame(x),
            !is.list(mapping))

  if(any(is.na(x[[teryt_var]]))) {
    warning("- Zmienna zawierająca kody TERYT posiada braki danych - wartości dla tych wierszy nie będą pokazane na wykresie\n", immediate. = TRUE)
  }

   if(any(grepl("sf", class(x))) == FALSE) {
  # spłaszczona ramka danych daje kolumny klasy hvnlbl
  x = x %>%
    mutate_if(is.numeric, as.numeric) %>% # zmieniam klasę na dbl
    mutate_if(is.character, as.character) %>% # zmieniam klasę na chr
    mutate(teryt_recoded = teryt_recode_woj(!!teryt_var))

  get("wojShape")
  x = wojShape %>%
    left_join(x,
              by = c("teryt" = "teryt_recoded"))
  message(paste("- Dołączono do zbioru", sum(!is.na(x[[mapping]])), "niepustych obserwacji\n"))
  }
  chart = ggplot(data = x) +
    geom_sf(aes(fill = !!mapping)) +
    scale_fill_distiller(palette = "RdPu", direction = 1) +
    theme(axis.line = element_blank(),
          axis.text.x = element_blank(),
          axis.text.y = element_blank(),
          axis.ticks = element_blank())
  return(chart)
}
