#' @importFrom tibble tibble
NULL

#' Comercio Brasileiro em SH1
#'
#' Dados de comercio bilateral oferecidos pelo Ministério da Economia
#' em nível de agregação SH1.
#'
#' @format o banco de dados possui sete variáveis: \code{path},
#' que indica a direção do comércio (exportações ou importações),
#' \code{co_ano}, \code{co_mes}, \code{co_pais}, o código do país,
#' segundo a base de dados do MEcon, \code{co_ncm_secrom}, que faz
#' referência ao nível de agregação 1 do Sistema Harmonizado de Comércio,
#'  \code{value} o montante comercializado e \code{no_pais}.
#'
#' @source \url{https://www.gov.br/produtividade-e-comercio-exterior/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta}
"sh1_df"

#' Comercio Brasileiro em SH4
#'
#' Dados de comercio bilateral oferecidos pelo Ministério da Economia
#' em nível de agregação SH4.
#'
#' @format o banco de dados possui sete variáveis: \code{path},
#' que indica a direção do comércio (exportações ou importações),
#' \code{co_ano}, \code{co_mes}, \code{co_pais}, o código do país,
#' segundo a base de dados do MEcon, \code{co_ncm_secrom}, que faz
#' referência ao nível de agregação 4 do Sistema Harmonizado de Comércio,
#'  \code{value} o montante comercializado e \code{no_pais}.
#'
#' @source \url{https://www.gov.br/produtividade-e-comercio-exterior/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta}
"sh4_df"

#' Comercio Brasileiro em SH6
#'
#' Dados de comercio bilateral oferecidos pelo Ministério da Economia
#' em nível de agregação SH6.
#'
#' @format o banco de dados possui sete variáveis: \code{path},
#' que indica a direção do comércio (exportações ou importações),
#' \code{co_ano}, \code{co_mes}, \code{co_pais}, o código do país,
#' segundo a base de dados do MEcon, \code{co_ncm_secrom}, que faz
#' referência ao nível de agregação 6 do Sistema Harmonizado de Comércio,
#'  \code{value} o montante comercializado e \code{no_pais}.
#'
#' @source \url{https://www.gov.br/produtividade-e-comercio-exterior/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta}

"sh6_df"

#' Comercio Brasileiro por Fator Agregado
#'
#' Dados de comercio bilateral oferecidos pelo Ministério da Economia
#' agregados pela classificação de Fator Agregado. Dados originais podem ser acessados em
#' https://www.gov.br/produtividade-e-comercio-exterior/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta
#'
#' Essa classificação foi desenvolvida pelo Banco do Brasil, na década de 70 e,
#' atualmente, deixou de ser disponibilizada pelo Comex Stat. A classificação divide
#' os produtos em três níveis: básicos, semimanufaturados e manufaturados. Os dois últimos
#' são costumam ser chamados de "produtos industrializados". A referência de cada um
#' dos produtos pode ser encontrada na base \code{dic_ncm_fator}, disponível neste pacote.
#'
#' @format o banco de dados possui cinco variáveis: \code{path},
#' que indica a direção do comércio (exportações ou importações),
#' \code{co_fat_agreg}, que indica o código do fator agregado,
#' \code{co_ano}, \code{co_pais} e \code{value}.
#'
#' @source \url{https://www.gov.br/produtividade-e-comercio-exterior/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta}

"fator_df"

#' Comercio Brasileiro por CGCE
#'
#' Dados de comercio bilateral oferecidos pelo Ministério da Economia
#' agregados pela classificação de Grandes Categorias Econômicas.
#'
#' Classificação utilizada pelo IBGE em seu sistema de contas nacionais. Dividi-se em
#' Bens de Capital (BK), Bens Intermediários (BI), Bens de Consumo (BC) e Bens Não Especificados
#' Anteriormente. A referência de cada um dos produtos pode ser encontrada na
#' base \code{dic_ncm_cgce}, disponível neste pacote.
#'
#' Nota Metodológica do Ministério da Economia: https://balanca.economia.gov.br/balanca/metodologia/Nota_CGCE.pdf
#'
#' @format o banco de dados possui cinco variáveis: \code{path},
#' que indica a direção do comércio (exportações ou importações),
#' \code{co_cgce_n1}, que indica o código do cgce,
#' \code{co_ano}, \code{co_pais} e \code{value}.
#'
#' @source \url{https://www.gov.br/produtividade-e-comercio-exterior/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta}
"cgce_df"

#' Comercio Brasileiro por CUCI
#'
#' Dados de comercio bilateral oferecidos pelo Ministério da Economia
#' agregados pela Classificação Uniforme para o Comércio Internacional (CUCI).
#'
#' Classificação criada pela ONU para estatísticas de comércio exterior. Segundo o
#' Ministério da Economia, os agrupamentos da CUCI refletem: materiais utilizados na produção;
#' estágio de processamento; práticas de mercado; importância dos bens e mudanças tecnológicas.
#'
#' @format o banco de dados possui cinco variáveis: \code{path},
#' que indica a direção do comércio (exportações ou importações),
#' \code{co_cuci_sec}, que indica o código cuci,
#' \code{co_ano}, \code{co_pais} e \code{value}.
#'
#' @source \url{https://www.gov.br/produtividade-e-comercio-exterior/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta}
"cuci_df"

#' Comercio Brasileiro por ISIC
#'
#' Dados de comercio bilateral oferecidos pelo Ministério da Economia
#' agregados pela Standard Industrial Classification of All Economic Activities (ISIC).
#'
#' Classificação criada pela ONU para estatísticas de comércio exterior. Propõe estrutura
#' menos voltada para produto e mais voltada para atividade produtiva. Mais informações:
#' https://balanca.economia.gov.br/balanca/metodologia/Nota_ISIC-CUCI.pdf
#'
#' @format o banco de dados possui cinco variáveis: \code{path},
#' que indica a direção do comércio (exportações ou importações),
#' \code{co_isic_secao}, que indica o código isic,
#' \code{co_ano}, \code{co_pais} e \code{value}.
#'
#' @source \url{https://www.gov.br/produtividade-e-comercio-exterior/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta}
"isic_df"

#' Dicionário de Correlação NCM - CGCE
#'
#' Correlaciona produtos em NCM ao sistema de classificação CGCE.
"dic_ncm_cgce"

#' Dicionário de Correlação NCM - CUCI
#'
#' Correlaciona produtos em NCM ao sistema de classificação CUCI
"dic_ncm_cuci"

#' Dicionário de Correlação NCM - Fator Agregado
#'
#' Correlaciona produtos em NCM ao sistema de classificação por Fator Agregado.
"dic_ncm_fator"

#' Dicionário de Correlação NCM - ISIC
#'
#' Correlaciona produtos em NCM ao sistema de classificação ISIC.
"dic_ncm_isic"

#' Dicionário de Correlação Códigos Países - Nomes de Países
#'
#' Correlaciona países, seguindo os códigos oferecidos pelo Ministério da Economia,
#' com os nomes na grafia estabelecidas pelo Ministério da Economia.
"dic_paises"


#' Dicionário de Correlação Códigos Países - Nomes de Países e ISOA3
#'
#' Correlaciona países, seguindo os códigos oferecidos pelo Ministério da Economia,
#' com os nomes na grafia estabelecidas pelo Ministério da Economia.
"dic_paises_isoa3"

#' Dicionário de Correlação SH6 - SH4
#'
#' Correlaciona produtos do Sistema Harmonizado em SH6 para SH4.
"dic_sh6_sh4"

#' Dicionário de Correlação SH6 - SH1
#'
#' Correlaciona produtos do Sistema Harmonizado em SH6 para SH2.
"dic_sh6_sh2"

#' Dicionário de Correlação SH6 - SH1
#'
#' Correlaciona produtos do Sistema Harmonizado em SH6 para SH1.
"dic_sh6_sh1"

#' Lista de Blocos de Países
#'
#' Correlaciona países a blocos.
"dic_blocos"





