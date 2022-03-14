#' @title zmiana formatu terytu powiatu
#' @description funkcja konwertuje różne formaty terytu dla powiatu na
#' kompatybilny z funkcją łączącą zbiory i rysującą podstawowy wykres
#' @param x kolumna zawierajaca numer teryt - trzeci argument funkcji
#' \code{mapa_powiat_cont}
teryt_recode_pow = function(x) {
  if(is.character(x) | is.factor(x)) {
    x = as.character(levels(x)[x]) # konwertuję na character, bo na factorach nie działają funkcje z stringr
    if(any(nchar(x) %in% 7)) {
      message("- Rozpoznano numer TERYT w formacie tekstowym: 7 znaków\n")
      x = substr(x, start = 0, stop = 4)
      x = as.numeric(x)
      return(x)
    } else if (any(nchar(x) %in% 6)) {
      message("- Rozpoznano numer TERYT w formacie tekstowym: 6 znaków\n")
      x = substr(x, start = 0, stop = 4)
      x = as.numeric(x)
    } else if(any(nchar(x) %in% 4)) {
      message("- Rozpoznano numer TERYT w formacie tekstowym: 4 znaki\n")
      x = as.numeric(x)
      return(x)
    }
  }
  else if (is.numeric(x)) {
    if(any(nchar(floor(x)) %in% 7)) {
      message("- Rozpoznano numer TERYT w formacie liczbowym: 7 znaków\n")
      x = floor(x / 1000)
      return(x)
    } else if(any(nchar(floor(x)) %in% 6)) {
      message("- Rozpoznano numer TERYT w formacie liczbowym: 6 znaków\n")
      x = floor(x / 100)
      return(x)
    } else if(any(nchar(floor(x)) %in% 4)) {
      message("- Rozpoznano numer TERYT w formacie liczbowym: 4 znaki\n")
      return(x)
    }
  } else {
    stop("Niepoprawny format numeru TEYRT. Numer teryt powinien mieć formę
         tekstową lub numeryczną, a liczba znaków nie powinna przekraczać 7")
  }
}
#' @title zmiana formatu terytu województwa
#' @description funkcja konwertuje różne formaty terytu dla województwa na
#' kompatybilny z funkcją łączącą zbiory i rysującą podstawowy wykres
#' @param x kolumna zawierajaca numer teryt - trzeci argument funkcji
#' \code{mapa_woj_cont}
teryt_recode_woj = function(x) {
  if(is.character(x) | is.factor(x)) {
    x = as.character(levels(x)[x]) # konwertuję na character, bo na factorach nie działają funkcje z stringr
    if(any(nchar(x) %in% 7)) {
      message("- Rozpoznano numer TERYT w formacie tekstowym: 7 znaków\n")
      x = substr(x, start = 0, stop = 2)
      x = as.numeric(x)
      return(x)
    } else if(any(nchar(x) %in% 6)) {
      message("- Rozpoznano numer TERYT w formacie tekstowym: 6 znaków\n")
      x = substr(x, start = 0, stop = 2)
      x = as.numeric(x)
      return(x)
    } else if(any(nchar(x) %in% 4)) {
      message("- Rozpoznano numer TERYT w formacie tekstowym: 4 znaki\n")
      x = substr(x, start = 0, stop = 2)
      x = as.numeric(x)
      return(x)
    } else if(any(nchar(x) %in% 2)) {
      message("- Rozpoznano numer TERYT w formacie tekstowym: 2 znaki\n")
      x = as.numeric(x)
      return(x)
    }
  }
  else if (is.numeric(x)) {
    if(any(nchar(floor(x)) %in% 7)) {
      message("- Rozpoznano numer TERYT w formacie liczbowym: 7 znaków\n")
      x = floor(x / 100000)
      return(x)
    } else if(any(nchar(floor(x)) %in% 6)) {
      message("- Rozpoznano numer TERYT w formacie liczbowym: 6 znaków\n")
      x = floor(x / 10000)
      return(x)
    } else if (any(nchar(floor(x)) %in% 4)) {
      message("- Rozpoznano numer TERYT w formacie liczbowym: 4 znaki\n")
      x = floor(x / 100)
      return(x)
    } else if(any(nchar(floor(x)) %in% 2)) {
      message("- Rozpoznano numer TERYT w formacie liczbowym: 2 znaki\n")
      return(x)
    }
  } else {
    stop("Niepoprawny format numeru TEYRT. Numer teryt powinien mieć formę
         tekstową lub numeryczną, a liczba znaków nie powinna przekraczać 7")
  }
}
