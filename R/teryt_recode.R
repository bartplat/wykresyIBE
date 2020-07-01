#' @title zmiana formatu terytu powiatu
#' @description funkcja konwertuje różne formaty terytu dla powiatu na
#' kompatybilny z funkcją łączącą zbiory i rysującą podstawowy wykres
#' @param x kolumna zawierajaca numer teryt - trzeci argument funkcji
#' \code{mapa_powiat_cont}
#' @importFrom rlang ensym
teryt_recode_pow = function(x) {
  if(is.character(x) | is.factor(x)) {
    x = as.character(levels(x)[x]) # konwertuję na character, bo na factorach nie działają funkcje z stringr
    if(any(nchar(x) %in% 7)) {
      x = substr(x, start = 0, stop = 4)
      x = as.numeric(x)
      return(x)
    } else if (any(nchar(x) %in% 6)) {
      x = substr(x, start = 0, stop = 4)
      x = as.numeric(x)
    } else if(any(nchar(x) %in% 4)) {
      x = as.numeric(x)
      return(x)
    }
  }
  else if (is.numeric(x)) {
    if(any(nchar(floor(x)) %in% 7)) {
      x = floor(x / 1000)
      return(x)
    } else if(any(nchar(floor(x)) %in% 6)) {
      x = floor(x / 100)
      return(x)
    } else if(any(nchar(floor(x)) %in% 4)) {
      return(x)
    }
  } else {
    print("Niepoprawny format numeru TEYRT.")
  }
}
#' @title zmiana formatu terytu województwa
#' @description funkcja konwertuje różne formaty terytu dla województwa na
#' kompatybilny z funkcją łączącą zbiory i rysującą podstawowy wykres
#' @param x kolumna zawierajaca numer teryt - trzeci argument funkcji
#' \code{mapa_woj_cont}
#' @importFrom rlang ensym
teryt_recode_woj = function(x) {
  if(is.character(x) | is.factor(x)) {
    x = as.character(levels(x)[x]) # konwertuję na character, bo na factorach nie działają funkcje z stringr
    if(any(nchar(x) %in% 7)) {
      x = substr(x, start = 0, stop = 2)
      x = as.numeric(x)
      return(x)
    } else if(any(nchar(x) %in% 6)) {
      x = substr(x, start = 0, stop = 2)
      x = as.numeric(x)
      return(x)
    } else if(any(nchar(x) %in% 4)) {
      x = substr(x, start = 0, stop = 2)
      x = as.numeric(x)
      return(x)
    } else if(any(nchar(x) %in% 2)) {
      x = as.numeric(x)
      return(x)
    }
  }
  else if (is.numeric(x)) {
    if(any(nchar(floor(x)) %in% 7)) {
      x = floor(x / 100000)
      return(x)
    } else if(any(nchar(floor(x)) %in% 6)) {
      x = floor(x / 10000)
      return(x)
    } else if (any(nchar(floor(x)) %in% 4)) {
      x = floor(x / 100)
      return(x)
    } else if(any(nchar(floor(x)) %in% 2)) {
      return(x)
    }
  } else {
    print("Niepoprawny format numeru TEYRT.")
  }
}
