#' @title Kształty powiatów
#' @description Ramka danych zawierająca kształty powiatów wymagane do rysowania
#' map oraz informacje potrzebne do zidentyfikowania powiatów takie, jak kod
#' teryt, nazwy powiatów itd.
#' @format Ramka danych stworzona funkcją \code{read_sf}
#' \describe{
#'   \item{jpt_kod_je}{kod teryt powiatu w formacie czterocyfrowym}
#'   \item{jpt_nazwa_}{nazwy powiatów}
#'   \item{geometry}{kształty powiatów potrzebne do narysowania mapy}
#'  }
"powiatyShape"
#' @title Kształty województw
#' @description Ramka danych zawierająca kształty województw wymagane do
#' rysowania map oraz informacje potrzebne do zidentyfikowania województw takie,
#' jak kod teryt, nazwy województw itd.
#' @format Ramka danych stworzona funkcją \code{read_sf}
#' \describe{
#'   \item{jpt_kod_je}{kod teryt województwa w formacie dwucyfrowym}
#'   \item{jpt_nazwa_}{nazwy województw}
#'   \item{geometry}{kształty województw potrzebne do narysowania mapy}
#'  }
"wojShape"
