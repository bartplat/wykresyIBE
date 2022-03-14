folderStatus = list.files()
load(file.path(system.file("testdata", package = "wykresyIBE"), "test_powiaty_df.RData"))
load(file.path(system.file("testdata", package = "wykresyIBE"), "test_woj_df.RData"))

################################################################################
context("Informacja dotycząca rozpoznania formatu TERYTu - powiaty")
################################################################################
testthat("TERYTy w formie numerycznej",
         expect_message(mapa_powiat_cont(testPowiatyDf, var_ok1, teryt_NA)),
         )


################################################################################
context("Komunikaty w formie \"messages\" lub \"warnings\" - województwa")
################################################################################



################################################################################

unlink(setdiff(list.files(), folderStatus), recursive = TRUE)
