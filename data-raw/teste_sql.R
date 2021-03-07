library(DBI)
library(dbx)
library(magrittr)
library(dplyr)

con <- dbConnect(RPostgres::Postgres())

file <- here::here("temp", "EXP_2021.csv")

comerciobr <- vroom::vroom(file, altrep = F,
                   col_select = c("CO_ANO", "CO_MES", "CO_NCM", "CO_PAIS", "VL_FOB"),
                   col_types = c(CO_ANO = "i", CO_MES = "c",
                                 CO_NCM = "c", CO_PAIS = "c",
                                 VL_FOB = "d")) %>%
  janitor::clean_names()

# DBI::dbCreateTable(con,"comerciobr",comerciobr)
#
# dbx::dbxInsert(con,"comerciobr", comerciobr)

comerciobr <- dplyr::tbl(con, "comerciobr")

comerciobr %>%
  dplyr::filter(co_pais == "317") %>%
  left_join(comerciobr::dic_paises, by = "co_pais")




