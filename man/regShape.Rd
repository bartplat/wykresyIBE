% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{regShape}
\alias{regShape}
\title{Kształty regionów (NUTS2)}
\format{
Ramka danych w formacie \code{data.frame}
\describe{
  \item{nazwa}{nazwa regionu}
  \item{kod}{kod regionu składający się z liter "PL" i dwóch cyfr}
  \item{geometry}{kształty regionów potrzebne do narysowania mapy}
 }
}
\usage{
regShape
}
\description{
Ramka danych zawierająca kształty regionów według klasyfikacji
NUTS2. Można ich używać do nakładania nowej warstwy na wykres (np. granic
regionów w postaci konturu lub wypełnienia kolorem z parametrem
przezroczystości \code{alpha})
}
\keyword{datasets}
