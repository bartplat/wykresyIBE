folderStatus = list.files()
load(file.path(system.file("testdata", package = "wykresyIBE"), "test_powiaty_df.RData"))
load(file.path(system.file("testdata", package = "wykresyIBE"), "test_woj_df.RData"))

################################################################################
context("Tworzenie niepustego obiektu ggplot dla poprawnego terytu i poprawnej
        zmiennej (\"var_ok1\") - powiaty")
################################################################################
test_that("Teryt \"wwpp_txt\" i zmienna \"var_ok1\"", {
  wykres = mapa_powiat_cont(testPowiatyDf, var_ok1, wwpp_txt)
  expect_false(isTRUE(all.equal(
    "list()", sapply(wykres$layers, function(x) class(x$geom)[1]))))
})
test_that("Teryt \"wwppgg_txt\" i zmienna \"var_ok1\"", {
  wykres = mapa_powiat_cont(testPowiatyDf, var_ok1, wwppgg_txt)
  expect_false(isTRUE(all.equal(
    "list()", sapply(wykres$layers, function(x) class(x$geom)[1]))))
})
test_that("Teryt \"wwppgg1_txt\" i zmienna \"var_ok1\"", {
  wykres = mapa_powiat_cont(testPowiatyDf, var_ok1, wwppgg1_txt)
  expect_false(isTRUE(all.equal(
    "list()", sapply(wykres$layers, function(x) class(x$geom)[1]))))
})
test_that("Teryt \"wwpp_num\" i zmienna \"var_ok1\"", {
  wykres = mapa_powiat_cont(testPowiatyDf, var_ok1, wwpp_num)
  expect_false(isTRUE(all.equal(
    "list()", sapply(wykres$layers, function(x) class(x$geom)[1]))))
})
test_that("Teryt \"wwppgg_num\" i zmienna \"var_ok1\"", {
  wykres = mapa_powiat_cont(testPowiatyDf, var_ok1, wwppgg_num)
  expect_false(isTRUE(all.equal(
    "list()", sapply(wykres$layers, function(x) class(x$geom)[1]))))
})
test_that("Teryt \"wwppgg1_num\" i zmienna \"var_ok1\"", {
  wykres = mapa_powiat_cont(testPowiatyDf, var_ok1, wwppgg1_num)
  expect_false(isTRUE(all.equal(
    "list()", sapply(wykres$layers, function(x) class(x$geom)[1]))))
})
################################################################################
context("Tworzenie niepustego obiektu ggplot dla poprawnego terytu i poprawnej
        zmiennej (\"var_ok1\") - województwa")
################################################################################
test_that("Teryt \"ww_txt\" i zmienna \"var_ok1\"", {
  wykres = mapa_woj_cont(testWojDf, var_ok1, ww_txt)
  expect_false(isTRUE(all.equal(
    "list()", sapply(wykres$layers, function(x) class(x$geom)[1]))))
})
test_that("Teryt \"ww_num\" i zmienna \"var_ok1\"", {
  wykres = mapa_woj_cont(testWojDf, var_ok1, ww_num)
  expect_false(isTRUE(all.equal(
    "list()", sapply(wykres$layers, function(x) class(x$geom)[1]))))
})
################################################################################

unlink(setdiff(list.files(), folderStatus), recursive = TRUE)
