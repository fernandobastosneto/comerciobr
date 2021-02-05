
<!-- README.md is generated from README.Rmd. Please edit that file -->

# comerciobr

<!-- badges: start -->

<!-- badges: end -->

Dados de comercio brasileiro, retirados do Ministério da Economia, que
cabem na sua memória. O pacote oferece dados de 2010 em diante, em
diferentes opções: dados agregados em SH6, SH4 ou SH1, de 2010 em
diante. Também oferece dados consolidados, discriminados por país e ano,
para as quatro classificações de comercio exterior oferecidas pelo
Minsitério da Economia: CGCE, CUCI, ISIC e Fator Agregado.

## Instalação

Você pode instalar o pacote a partir do [GitHub](https://github.com/)
com o seguinte comando:

``` r
# install.packages("devtools")
devtools::install_github("fernandobastosneto/comerciobr")
```

## Exemplo

Comércio em SH4

``` r
library(comerciobr)
library(magrittr)

comerciobr::sh4_df %>% 
  dplyr::filter(co_ano == max(co_ano)-1) %>% 
  dplyr::group_by(co_ano, path, no_pais) %>%
  dplyr::summarise(value = sum(value)) %>% 
  dplyr::arrange(desc(value))
#> `summarise()` has grouped output by 'co_ano', 'path'. You can override using the `.groups` argument.
#> # A tibble: 480 x 4
#> # Groups:   co_ano, path [2]
#>    co_ano path  no_pais                       value
#>     <int> <chr> <chr>                         <dbl>
#>  1   2020 EXP   China                   67788071101
#>  2   2020 IMP   China                   34041250902
#>  3   2020 IMP   Estados Unidos          24122448007
#>  4   2020 EXP   Estados Unidos          21481528307
#>  5   2020 IMP   Brasil                  12620789898
#>  6   2020 IMP   Alemanha                 8597645213
#>  7   2020 EXP   Argentina                8488717954
#>  8   2020 IMP   Argentina                7788098367
#>  9   2020 EXP   Países Baixos (Holanda)  7382820316
#> 10   2020 EXP   Canadá                   4229942341
#> # … with 470 more rows
```

Comércio por fator agregado

``` r
comerciobr::fator_df %>%
  dplyr::filter(co_ano == max(co_ano)-1) %>%
  dplyr::group_by(co_fat_agreg, co_pais) %>%
  dplyr::summarise(value = sum(value)) %>%
  dplyr::group_by(co_fat_agreg) %>% 
  dplyr::slice_max(value, n = 3) %>%
  dplyr::left_join(comerciobr::dic_paises)
#> `summarise()` has grouped output by 'co_fat_agreg'. You can override using the `.groups` argument.
#> Joining, by = "co_pais"
#> # A tibble: 9 x 4
#> # Groups:   co_fat_agreg [3]
#>   co_fat_agreg co_pais       value no_pais                
#>   <chr>        <chr>         <dbl> <chr>                  
#> 1 01           160     60020173945 China                  
#> 2 01           249      5499798375 Estados Unidos         
#> 3 01           573      3903212116 Países Baixos (Holanda)
#> 4 02           160      7129115545 China                  
#> 5 02           249      4620329096 Estados Unidos         
#> 6 02           149      3332365979 Canadá                 
#> 7 03           249     35483848843 Estados Unidos         
#> 8 03           160     34680032513 China                  
#> 9 03           063     13125739281 Argentina
```
