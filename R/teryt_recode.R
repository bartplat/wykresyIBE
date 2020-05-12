#' @title zmiana formatu terytu
#' @description funkcja konwertuje różne formaty terytu dla powiatu na
#' kompatybilny z funkcją łączącą zbiory i rysującą podstawowy wykres
#' @param x kolumna zawierajaca numer teryt - trzeci argument funkcji
#' \code{mapa_powiat_cont}
#' @importFrom rlang ensym
#' @importFrom stringr str_sub str_length
teryt_recode_pow = function(x) {
  if(is.character(x) | is.factor(x)) {
    x = as.character(levels(x)[x]) # konwertuję na character, bo na factorach nie działają funkcje z stringr
    if(any(str_length(x) == 4)) {
      x = as.numeric(x)
      return(x)
    } else if (any(str_length(x) == 6)) {
      x = str_sub(x, end = -3)
      x = as.numeric(x)
      return(x)
    } else if(any(str_length(x) == 7)) {
      x = str_sub(x, end = -4)
      x = as.numeric(x)
      return(x)
    }
  }
  else if (is.numeric(x)) {
    # https://stackoverflow.com/questions/47190693/count-the-number-of-integer-digits
    if(any(floor(log10(x)) + 1 == 3 | floor(log10(x)) + 1 == 4)) {
      return(x)
    } else if(any(floor(log10(x)) + 1 == 5 | floor(log10(x)) + 1 == 6)) {
      x = floor(x / 100)
      return(x)
    } else if(any(floor(log10(x)) + 1 == 7)) {
      x = floor(x / 1000)
      return(x)
    }
  }
}
