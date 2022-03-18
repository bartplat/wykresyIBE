#' @title Kształty powiatów
#' @description Ramka danych zawierająca kształty powiatów wymagane do rysowania
#' map oraz informacje potrzebne do zidentyfikowania powiatów takie, jak kod
#' teryt, nazwy powiatów itd.
#' @format Ramka danych stworzona funkcją \code{read_sf}
#' \describe{
#'   \item{teryt}{kod teryt powiatu w formacie czterocyfrowym}
#'   \item{nazwa}{nazwy powiatów}
#'   \item{geometry}{kształty powiatów potrzebne do narysowania mapy}
#'  }
"powiatyShape"
#' @title Kształty województw
#' @description Ramka danych zawierająca kształty województw wymagane do
#' rysowania map oraz informacje potrzebne do zidentyfikowania województw takie,
#' jak kod teryt, nazwy województw itd.
#' @format Ramka danych stworzona funkcją \code{read_sf}
#' \describe{
#'   \item{teryt}{kod teryt województwa w formacie dwucyfrowym}
#'   \item{nazwa}{nazwy województw}
#'   \item{geometry}{kształty województw potrzebne do narysowania mapy}
#'  }
"wojShape"
#' @title Kształty makroregionów (NUTS1)
#' @description Ramka danych zawierająca kształty makroregionów według
#' klasyfikacji NUTS1. Można ich używać do nakładania nowej warstwy na wykres
#' (np. granic makroregionów w postaci konturu lub wypełnienia kolorem z
#' parametrem przezroczystości \code{alpha})
#' @format Ramka danych w formacie \code{data.frame}
#' \describe{
#'   \item{nazwa}{nazwa makroregionu}
#'   \item{kod}{kod makroregionu składający się z liter "PL" i jednej cyfry}
#'   \item{geometry}{kształty makroregionów potrzebne do narysowania mapy}
#'  }
"makroregShape"
#' @title Kształty regionów (NUTS2)
#' @description Ramka danych zawierająca kształty regionów według klasyfikacji
#' NUTS2. Można ich używać do nakładania nowej warstwy na wykres (np. granic
#' regionów w postaci konturu lub wypełnienia kolorem z parametrem
#' przezroczystości \code{alpha})
#' @format Ramka danych w formacie \code{data.frame}
#' \describe{
#'   \item{nazwa}{nazwa regionu}
#'   \item{kod}{kod regionu składający się z liter "PL" i dwóch cyfr}
#'   \item{geometry}{kształty regionów potrzebne do narysowania mapy}
#'  }
"regShape"
#' @title Kształty podregionów (NUTS3)
#' @description Ramka danych zawierająca kształty podregionów według
#' klasyfikacji NUTS3. Można ich używać do nakładania nowej warstwy na wykres
#' (np. granic podregionów w postaci konturu lub wypełnienia kolorem z
#' parametrem przezroczystości \code{alpha})
#' @format Ramka danych w formacie \code{data.frame}
#' \describe{
#'   \item{nazwa}{nazwa podregionu}
#'   \item{kod}{kod podregionu składający się z liter "PL" i trzech cyfr}
#'   \item{geometry}{kształty podregionów potrzebne do narysowania mapy}
#'  }
"podregShape"
#' @title Kształty podziału na Polskę wschodnią i zachodnią
#' @description Ramka danych zawierająca kształty podziału na Polskę wschodnią i
#' zachodnią - Polska wschodnia definiowana jest według definicji w programie
#' Polska Wschodnia 2014-2020 (PO PW), czyli w jej skład wchodzą województwa:
#' lubelskie, podlaskie, podkarpackie, świętokrzyskie i warmińsko-mazurskie,
#' natomiast Polska zachodnia to pozostałe województwa. KonturóW można używać do
#' nakładania nowej warstwy na wykres (np. granic podziału w postaci konturu lub
#' wypełnienia kolorem z parametrem przezroczystości \code{alpha})
#' @format Ramka danych w formacie \code{data.frame}
#' \describe{
#'   \item{geometry}{kształty obszarów potrzebne do narysowania mapy}
#'   \item{nazwa}{nazwa obszaru: "wschod" lub "zachod"}
#'  }
"wschZachShape"
#' @title Kształty zaborów (bez kategorii ziemie odzyskane)
#' @description Ramka danych zawierająca kształty zaborów. Konturów można używać
#' do nakładania nowej warstwy na wykres (np. granic zaborów w postaci konturu
#' lub wypełnienia kolorem z parametrem przezroczystości \code{alpha})
#' @format Ramka danych w formacie \code{data.frame}
#' \describe{
#'   \item{geometry}{kształty zaborów potrzebne do narysowania mapy}
#'   \item{nazwa}{nazwa zaboru: "austriacki", "pruski" lub "rosyjski"}
#'  }
"zaboryShape"
#' @title Kształty zaborów (zawierające kategorię ziem odzyskanych)
#' @description Ramka danych zawierająca kształty zaborów z dodatkową kateogią
#' ziem odzyskanych. KonturóW można używać do nakładania nowej warstwyn a wykres
#' (np. granic zaborów w postaci konturu lub wypełnienia kolorem z parametrem
#' przezroczystości \code{alpha})
#' @format Ramka danych w formacie \code{data.frame}
#' \describe{
#'   \item{geometry}{kształty zaborów potrzebne do narysowania mapy}
#'   \item{nazwa}{nazwa zaboru: "austriacki", "pruski", "rosyjski" lub ziemie
#'   odzyskane}
#'  }
"zaboryZOShape"
