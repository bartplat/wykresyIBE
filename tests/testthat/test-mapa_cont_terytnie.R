folderStatus = list.files()
load(file.path(system.file("testdata", package = "wykresyIBE"), "test_powiaty_df.RData"))
load(file.path(system.file("testdata", package = "wykresyIBE"), "test_woj_df.RData"))

################################################################################
context("Użycie niepoprawnego formatu terytu - powiaty")
################################################################################
test_that("Teryt \"teryt_nie1\" i zmienna \"var_ok1\"", {
  expect_error(mapa_powiat_cont(testPowiatyDf, var_ok1, teryt_nie1),
               "`by` can't contain join column `teryt_recoded`")
})
test_that("Teryt \"teryt_nie2\" i zmienna \"var_ok1\"", {
  expect_error(mapa_powiat_cont(testPowiatyDf, var_ok1, teryt_nie2),
               "`by` can't contain join column `teryt_recoded`")
})
################################################################################
context("Użycie niepoprawnego formatu terytu - województwa")
################################################################################
test_that("Teryt \"teryt_nie1\" i zmienna \"var_ok1\"", {
  expect_error(mapa_woj_cont(testWojDf, var_ok1, teryt_nie1),
               "`by` can't contain join column `teryt_recoded`")
})
test_that("Teryt \"teryt_nie2\" i zmienna \"var_ok1\"", {
  expect_error(mapa_woj_cont(testWojDf, var_ok1, teryt_nie2),
               "`by` can't contain join column `teryt_recoded`")
})
################################################################################

unlink(setdiff(list.files(), folderStatus), recursive = TRUE)
