library(tidyverse)
library(onsvplot)
library(FactoMineR)
library(factoextra)

# Puxando os dados ----
url2007 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2007.zip"
url2008 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2008.zip"
url2014 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2014.zip"
url2015 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2015.zip"
url2016 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2016_atual.zip"
url2017 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2017.zip"
url2018 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2018.zip"
url2019 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2019.zip"
url2020 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2020.zip"
url2021 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2021.zip"
url2022 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2022.zip"
url2023 <- "https://github.com/ONSV/prfdata/raw/main/data-raw/acidentes2023.zip"

download.file(url2007, "acidentes2007.zip")
download.file(url2008, "acidentes2008.zip")
download.file(url2014, "acidentes2014.zip")
download.file(url2015, "acidentes2015.zip")
download.file(url2016, "acidentes2016_atual.zip")
download.file(url2017, "acidentes2017.zip")
download.file(url2018, "acidentes2018.zip")
download.file(url2019, "acidentes2019.zip")
download.file(url2020, "acidentes2020.zip")
download.file(url2021, "acidentes2021.zip")
download.file(url2022, "acidentes2022.zip")
download.file(url2023, "acidentes2023.zip")

unzip(zipfile = "acidentes2007.zip")
unzip(zipfile = "acidentes2008.zip")
unzip(zipfile = "acidentes2014.zip")
unzip(zipfile = "acidentes2015.zip")
unzip(zipfile = "acidentes2016_atual.zip")
unzip(zipfile = "acidentes2017.zip")
unzip(zipfile = "acidentes2018.zip")
unzip(zipfile = "acidentes2019.zip")
unzip(zipfile = "acidentes2020.zip")
unzip(zipfile = "acidentes2021.zip")
unzip(zipfile = "acidentes2022.zip")
unzip(zipfile = "acidentes2023.zip")

acidentes2007 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2007.csv' )
acidentes2008 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2008.csv' )
acidentes2014 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2014.csv' )
acidentes2015 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2015.csv')
acidentes2016 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2016_atual.csv', sep = ";")
acidentes2017 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2017.csv', sep = ";")
acidentes2018 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2018.csv', sep = ";")
acidentes2019 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2019.csv', sep = ";")
acidentes2020 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2020.csv', sep = ";")
acidentes2021 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2021.csv', sep = ";")
acidentes2022 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2022.csv', sep = ";")
acidentes2023 <- read.csv('/home/arthurhideionoguti/ONSV/Avaliacao-do-impacto-da-obrigatoriedade-de-Airbag-e-ABS-na-severidade-dos-sinistros-/Data-raw/acidentes2023.csv', sep = ";")

# Adicionando  a coluna com o ano em cada data frame ----
acidentes2007 <- acidentes2007 %>% 
  mutate(ano = 2007)
acidentes2008 <- acidentes2008 %>% 
  mutate(ano = 2008)
acidentes2014 <- acidentes2014 %>% 
  mutate(ano = 2014)
acidentes2015 <- acidentes2015 %>% 
  mutate(ano = 2015)
acidentes2016 <- acidentes2016 %>% 
  mutate(ano = 2016)
acidentes2017 <- acidentes2017 %>% 
  mutate(ano = 2017)
acidentes2018 <- acidentes2018 %>% 
  mutate(ano = 2018)
acidentes2019 <- acidentes2019 %>% 
  mutate(ano = 2019)
acidentes2020 <- acidentes2020 %>% 
  mutate(ano = 2020)
acidentes2021 <- acidentes2021 %>% 
  mutate(ano = 2021)
acidentes2022 <- acidentes2022 %>% 
  mutate(ano = 2022)
acidentes2023 <- acidentes2023 %>% 
  mutate(ano = 2023)

# Mudando a classificação das variáveis para permitir unir todos data frames ----
acidentes2007$km <- as.numeric(acidentes2007$km)  
acidentes2007$br <- as.integer(acidentes2007$br)
acidentes2007$id_veiculo <- as.numeric((acidentes2007$id_veiculo))
acidentes2007$ano_fabricacao_veiculo <- as.numeric(acidentes2007$ano_fabricacao_veiculo)

acidentes2008$km <- as.numeric(acidentes2008$km)
acidentes2008$br <- as.integer(acidentes2008$br)
acidentes2008$id_veiculo <- as.numeric((acidentes2008$id_veiculo))
acidentes2008$ano_fabricacao_veiculo <- as.numeric(acidentes2008$ano_fabricacao_veiculo)

acidentes2014$id_veiculo <- as.numeric(acidentes2014$id_veiculo)
acidentes2014$ano_fabricacao_veiculo <- as.numeric(acidentes2014$ano_fabricacao_veiculo)

acidentes2015$id_veiculo <- as.numeric(acidentes2015$id_veiculo)
acidentes2015$ano_fabricacao_veiculo <- as.numeric(acidentes2015$ano_fabricacao_veiculo)

acidentes2016$km <- as.numeric(acidentes2016$km)

acidentes2017$km <- as.numeric(acidentes2017$km)

acidentes2018$km <- as.numeric(acidentes2018$km)

acidentes2019$km <- as.numeric(acidentes2019$km)

acidentes2020$km <- as.numeric(acidentes2020$km)
acidentes2020$latitude <- as.character(acidentes2020$latitude)
acidentes2020$longitude <- as.character(acidentes2020$longitude)

acidentes2021$km <- as.numeric(acidentes2021$km)

acidentes2022$km <- as.numeric(acidentes2022$km)

acidentes2023$km <- as.numeric(acidentes2023$km)

# Unindo todos os dataframes em uma base de dados ----
dados <- bind_rows(acidentes2007,acidentes2008,
                                 acidentes2014,acidentes2015,
                                 acidentes2016,acidentes2017,acidentes2018,
                                 acidentes2019,acidentes2020,acidentes2021,
                                 acidentes2022,acidentes2023)
# Criando coluna antes e depois da obrigatoriedade  
dados$periodo <- ifelse(
  dados$ano <= 2008,
  "antes",
  "depois"
)

# Selecionando apenas automóveis e utilitários ----
table(dados$tipo_veiculo)

dados_airbag <- dados %>% 
  filter(tipo_veiculo == "Autom\xf3vel"|
           tipo_veiculo == "Utilit\xe1rio")

dados_abs <- dados %>% 
  filter(tipo_veiculo == "Autom\xf3vel"|
           tipo_veiculo == "Utilit\xe1rio")

# Selecionando ano de fabricação ----
dados_abs_antes <- 
  dados_abs %>% 
    filter(periodo == "antes") %>% 
    filter(ano_fabricacao_veiculo %in% c(1936:2008))

dados_abs_depois <- 
  dados_abs %>% 
    filter(periodo == "depois") %>% 
    filter(ano_fabricacao_veiculo %in% c(2014:2023))

dados_abs <- bind_rows(dados_abs_antes, dados_abs_depois)

dados_airbag_antes <- 
  dados_airbag %>% 
  filter(periodo == "antes") %>% 
  filter(ano_fabricacao_veiculo %in% c(1936:2008)) 

dados_airbag_depois <- 
  dados_airbag %>% 
  filter(periodo == "depois") %>% 
  filter(ano_fabricacao_veiculo %in% c(2014:2023))

dados_airbag <- bind_rows(dados_airbag_antes, dados_airbag_depois)

# Seleção dos tipos de sinistro ----
dados_abs # Não muda nada, seleciona todos

table(dados_airbag$tipo_acidente)
dados_abs <- dados_abs %>% 
  mutate(tipo_acidente = dplyr::recode(tipo_acidente,
                                       "Atropelamento de animal" = "Atropelamento de Animal",
                                       "Atropelamento de pessoa" = "Atropelamento de Pedestre",
                                       "Colis\xe3o com bicicleta" = "Colisao com bicicleta",
                                       "Colis\xe3o com objeto" = "Colisao com objeto",
                                       "Colis\xe3o com objeto em movimento" = "Colisao com objeto",
                                       "Colis\xe3o com objeto est\xe1tico" = "Colisao com objeto",
                                       "Colis\xe3o com objeto fixo" = "Colisao com objeto",
                                       "Colis\xe3o com objeto m\xf3vel" = "Colisao com objeto",
                                       "Colis\xe3o frontal" = "Colisao frontal",
                                       "Colis\xe3o lateral" = "Colisao lateral",
                                       "Colis\xe3o lateral mesmo sentido" = "Colisao lateral",
                                       "Colis\xe3o lateral sentido oposto" = "Colisao lateral",
                                       "Colis\xe3o transversal" = "Colisao transversal",
                                       "Colis\xe3o Transversal" = "Colisao transversal",
                                       "Colis\xe3o traseira" = "Colisao traseira",
                                       "Danos Eventuais" = "Danos eventuais",
                                       "Derramamento de Carga" = "Derramamento de carga",
                                       "Eventos at\xedpicos" = "Eventos atipicos",
                                       "Inc\xeandio" = "Incendio",
                                       "Queda de motocicleta / bicicleta / ve\xedculo" = "Queda de motocicleta / bicicleta / veiculo",
                                       "Queda de ocupante de ve\xedculo" = "Queda de ocupante de veiculo",
                                       "Sa\xedda de leito carro\xe7\xe1vel" = "Saida de leito carrocavel",
                                       "Sa\xedda de Pista" = "Saida de Pista"))

dados_airbag <- dados_airbag %>% 
  mutate(tipo_acidente = dplyr::recode(tipo_acidente,
                                       "Atropelamento de animal" = "Atropelamento de Animal",
                                       "Atropelamento de pessoa" = "Atropelamento de Pedestre",
                                       "Colis\xe3o com bicicleta" = "Colisao com bicicleta",
                                       "Colis\xe3o com objeto" = "Colisao com objeto",
                                       "Colis\xe3o com objeto em movimento" = "Colisao com objeto",
                                       "Colis\xe3o com objeto est\xe1tico" = "Colisao com objeto",
                                       "Colis\xe3o com objeto fixo" = "Colisao com objeto",
                                       "Colis\xe3o com objeto m\xf3vel" = "Colisao com objeto",
                                       "Colis\xe3o frontal" = "Colisao frontal",
                                       "Colis\xe3o lateral" = "Colisao lateral",
                                       "Colis\xe3o lateral mesmo sentido" = "Colisao lateral",
                                       "Colis\xe3o lateral sentido oposto" = "Colisao lateral",
                                       "Colis\xe3o transversal" = "Colisao transversal",
                                       "Colis\xe3o Transversal" = "Colisao transversal",
                                       "Colis\xe3o traseira" = "Colisao traseira",
                                       "Danos Eventuais" = "Danos eventuais",
                                       "Derramamento de Carga" = "Derramamento de carga",
                                       "Eventos at\xedpicos" = "Eventos atipicos",
                                       "Inc\xeandio" = "Incendio",
                                       "Queda de motocicleta / bicicleta / ve\xedculo" = "Queda de motocicleta / bicicleta / veiculo",
                                       "Queda de ocupante de ve\xedculo" = "Queda de ocupante de veiculo",
                                       "Sa\xedda de leito carro\xe7\xe1vel" = "Saida de leito carrocavel",
                                       "Sa\xedda de Pista" = "Saida de Pista"))

dados_abs$tipo_acidente[dados_abs$tipo_acidente == ""] <- NA
dados_airbag$tipo_acidente[dados_airbag$tipo_acidente == ""] <- NA

dados_airbag <- 
  dados_airbag %>% 
    filter(tipo_acidente == "Colisao com objeto"| 
             tipo_acidente == "Colisao frontal"| 
             tipo_acidente == "Colisao traseira"|
             tipo_acidente == "Engavetamento")
# Seleção dos ocupantes ----
dados_abs #todos os ocupantes

dados_airbag <- 
  dados_airbag %>% 
    filter(tipo_envolvido == "Condutor")
# Seleção do estado físico da vítima ----
dados_abs <- dados_abs %>% 
  mutate(classificacao_acidente = dplyr::recode(classificacao_acidente,
                                                "Sem V\xedtimas" = "sem vitimas",
                                                "Sem V\xedtimas        " = "sem vitimas",
                                                "Com V\xedtimas Fatais " = "com vitimas fatais",
                                                "Com V\xedtimas Fatais" = "com vitimas fatais",
                                                "Com V\xedtimas Feridas" = "com vitimas feridas",
                                                "Ignorado" = "ignorado",
                                                "Ignorado           " = "ignorado",
                                                "(null)" = "ignorado"
  ))

dados_airbag <- dados_airbag %>% 
  mutate(classificacao_acidente = dplyr::recode(classificacao_acidente,
                                                "Sem V\xedtimas" = "sem vitimas",
                                                "Sem V\xedtimas        " = "sem vitimas",
                                                "Com V\xedtimas Fatais " = "com vitimas fatais",
                                                "Com V\xedtimas Fatais" = "com vitimas fatais",
                                                "Com V\xedtimas Feridas" = "com vitimas feridas",
                                                "Ignorado" = "ignorado",
                                                "Ignorado           " = "ignorado",
                                                "(null)" = "ignorado"
  ))

dados_abs$classificacao_acidente[dados_abs$classificacao_acidente == ""] <- "ignorado"
dados_airbag$classificacao_acidente[dados_airbag$classificacao_acidente == ""] <- "ignorado"

dados_abs <- dados_abs %>% 
  mutate(estado_fisico = dplyr::recode(estado_fisico,
                                       "Ileso" = "ileso",
                                       "Ileso       " = "ileso",
                                       "Ferido Leve" = "ferido leve",
                                       "Ferido Leve " = "ferido leve",
                                       "Les\xf5es Leves" = "ferido leve",
                                       "Ferido Grave" = "ferido grave",
                                       "Les\xf5es Graves" = "ferido grave",
                                       "Morto" = "morto",
                                       "Morto       " = "morto",
                                       "\xd3bito" = "morto",
                                       "Ignorado" = "ignorado",
                                       "Ignorado    " = "ignorado",
                                       "N\xe3o Informado" = "ignorado",
                                       "(null)" = "ignorado"
  ))

dados_airbag <- dados_airbag %>% 
  mutate(estado_fisico = dplyr::recode(estado_fisico,
                                       "Ileso" = "ileso",
                                       "Ileso       " = "ileso",
                                       "Ferido Leve" = "ferido leve",
                                       "Ferido Leve " = "ferido leve",
                                       "Les\xf5es Leves" = "ferido leve",
                                       "Ferido Grave" = "ferido grave",
                                       "Les\xf5es Graves" = "ferido grave",
                                       "Morto" = "morto",
                                       "Morto       " = "morto",
                                       "\xd3bito" = "morto",
                                       "Ignorado" = "ignorado",
                                       "Ignorado    " = "ignorado",
                                       "N\xe3o Informado" = "ignorado",
                                       "(null)" = "ignorado"
  ))

dados_abs$estado_fisico[dados_abs$estado_fisico == ""] <- "ignorado"
dados_airbag$estado_fisico[dados_airbag$estado_fisico == ""] <- "ignorado"

dados_abs_ferido_leve <- 
  dados_abs %>% 
    filter(estado_fisico == "ferido leve")

dados_abs_ferido_grave <- 
  dados_abs %>% 
  filter(estado_fisico == "ferido grave")

dados_abs_morto <- 
  dados_abs %>% 
  filter(estado_fisico == "morto")

dados_abs_ileso <- 
  dados_abs %>% 
    filter(estado_fisico == "ileso" & 
             (classificacao_acidente == "com vitimas fatais"|
             classificacao_acidente == "com vitimas feridas"))
  
dados_abs <- bind_rows(dados_abs_ferido_leve,dados_abs_ferido_grave,dados_abs_morto,dados_abs_ileso)

dados_airbag_ferido_leve <- 
  dados_airbag %>% 
  filter(estado_fisico == "ferido leve")

dados_airbag_ferido_grave <- 
  dados_airbag %>% 
  filter(estado_fisico == "ferido grave")

dados_airbag_morto <- 
  dados_airbag %>% 
  filter(estado_fisico == "morto")

dados_airbag_ileso <- 
  dados_airbag %>% 
  filter(estado_fisico == "ileso" & 
           (classificacao_acidente == "com vitimas fatais"|
              classificacao_acidente == "com vitimas feridas"))

dados_airbag <- bind_rows(dados_airbag_ferido_leve,dados_airbag_ferido_grave,dados_airbag_morto,dados_airbag_ileso)
# Proporção dos estados fisicos antes e depois ----
Prop_ef_abs_antes <- as.data.frame(table(dados_abs$estado_fisico[dados_abs$periodo == "antes"]))
Prop_ef_abs_depois <- as.data.frame(table(dados_abs$estado_fisico[dados_abs$periodo == "depois"]))

Prop_ef_airbag_antes <- as.data.frame(table(dados_airbag$estado_fisico[dados_airbag$periodo == "antes"]))
Prop_ef_airbag_depois <- as.data.frame(table(dados_airbag$estado_fisico[dados_airbag$periodo == "depois"]))

Prop_ef_abs_antes <- 
  Prop_ef_abs_antes %>% 
    mutate(proporção = Freq/sum(Freq)) %>% 
    mutate(variavel = "ABS Antes")

Prop_ef_abs_depois <- 
  Prop_ef_abs_depois %>% 
  mutate(proporção = Freq/sum(Freq)) %>% 
  mutate(variavel = "ABS depois")

Prop_ef_airbag_antes <- 
  Prop_ef_airbag_antes %>% 
  mutate(proporção = Freq/sum(Freq)) %>% 
  mutate(variavel = "Airbag Antes")

Prop_ef_airbag_depois <- 
  Prop_ef_airbag_depois %>% 
  mutate(proporção = Freq/sum(Freq)) %>% 
  mutate(variavel = "Airbag Depois")

Prop_ef_abs <- bind_rows(Prop_ef_abs_antes,Prop_ef_abs_depois)
Prop_ef_airbag <- bind_rows(Prop_ef_airbag_antes,Prop_ef_airbag_depois)

Prop_ef_abs %>% 
  ggplot(aes(x = reorder(Var1, proporção), y = proporção))+
  geom_col(fill = "orange2", color = "black")+
  geom_text(aes(y = proporção, label = scales::percent(proporção)), vjust = -0.5,
            position = position_dodge(width = 1)) +
  facet_wrap(~ variavel)+
  theme_bw()+
  labs(x = "Estado físico", y = "Proporção")

Prop_ef_airbag %>% 
  ggplot(aes(x = reorder(Var1, proporção), y = proporção))+
  geom_col(fill = "orange2", color = "black")+
  geom_text(aes(y = proporção, label = scales::percent(proporção)), vjust = -0.5,
            position = position_dodge(width = 1)) +
  facet_wrap(~ variavel)+
  theme_bw()+
  labs(x = "Estado físico", y = "Proporção")

# Tabela para o teste ----
tab_abs <- table(dados_abs$estado_fisico, dados_abs$periodo)
tab_airbag <- table(dados_airbag$estado_fisico, dados_airbag$periodo)

tab_abs
tab_airbag

# Teste chi-quadrado ----
q2abs <- chisq.test(tab_abs)
q2airbag <- chisq.test(tab_airbag)

# Verificando se todas as seleções foram feitas corretamentes (Prova real) ----
# tipo de veículo 
table(dados_abs$tipo_veiculo)
table(dados_airbag$tipo_veiculo)
# período de análise
table(dados_abs$ano)
table(dados_airbag$ano)
# ano de fabricação
table(dados_abs$ano_fabricacao_veiculo)
table(dados_airbag$ano_fabricacao_veiculo)

table(dados_abs_depois$ano_fabricacao_veiculo)
table(dados_airbag_depois$ano_fabricacao_veiculo)
# tipo de sinistro
table(dados_abs$tipo_acidente)
table(dados_airbag$tipo_acidente)
# ocupantes
table(dados_abs$tipo_envolvido)
table(dados_airbag$tipo_envolvido)
# estado fisico
table(dados_abs$classificacao_acidente[dados_abs$estado_fisico == "ileso"]) # tabela que mostra a classificação quando "ileso"
table(dados_airbag$classificacao_acidente[dados_airbag$estado_fisico == "ileso"])

table(dados_abs$estado_fisico)
table(dados_airbag$estado_fisico)

# Análise de correspondência ----
CA_abs <- dados_abs %>% 
  select(estado_fisico, periodo)

CA_airbag <- dados_airbag %>% 
  select(estado_fisico, periodo)

res_CA_abs <- MCA(CA_abs, ncp = 4, graph = FALSE)
#fviz_mca_biplot(res_CA_abs, geom.ind = "none")

res_CA_airbag <- MCA(CA_airbag, ncp = 4, graph = FALSE)
#fviz_mca_biplot(res_CA_airbag, geom.ind = "none")

abs_ca <- data.frame(res_CA_abs$var$coord, variavel = c("estado físico","estado físico","estado físico",
                                                        "estado físico","período","período"))
airbag_ca <- data.frame(res_CA_airbag$var$coord, variavel = c("estado físico","estado físico","estado físico",
                                                              "estado físico","período","período"))



ggplot(data = abs_ca, aes(x = Dim.1, y = Dim.2, color = variavel))+
  geom_point()+
  geom_label(label = rownames(abs_ca), label.size = 0.5, position = position_nudge(y = 0.15))+
  labs(x = "Dim1 (28.6%)", y = "Dim2 (25%)")+
  geom_hline(yintercept = 0, colour = "black", lty="longdash") + 
  geom_vline(xintercept = 0, colour = "black", lty="longdash") + 
  theme_onsv()

ggplot(data = airbag_ca, aes(x = Dim.1, y = Dim.2, color = variavel))+
  geom_point()+
  geom_label(label = rownames(airbag_ca), label.size = 0.5, position = position_nudge(y = 0.25))+
  labs(x = "Dim1 (28.3%)", y = "Dim2 (25%)")+
  geom_hline(yintercept = 0, colour = "black", lty="longdash") + 
  geom_vline(xintercept = 0, colour = "black", lty="longdash") + 
  theme_onsv()

# Verificar com professor se iremos adicionar essa ANACOR no relatório ou não 


# Porcentagem de veículos com Airbag e ABS em 2022 e 2023 ----
dados22 <- dados %>% 
  filter(ano == 2022) %>%
  filter(tipo_veiculo %in% c("Autom\xf3vel","Utilit\xe1rio"))
  filter(ano_fabricacao_veiculo %in% c(1946:2023))

(dados22 %>% 
  filter(ano_fabricacao_veiculo %in% c(2014:2023)) %>% 
  count()) / (dados22$ano_fabricacao_veiculo %>% 
       table() %>% 
       sum())

  dados23 <- dados %>% 
  filter(ano == 2023) %>%
  filter(tipo_veiculo %in% c("Autom\xf3vel","Utilit\xe1rio"))
  filter(ano_fabricacao_veiculo %in% c(1946:2023))
  
  (dados23 %>% 
      filter(ano_fabricacao_veiculo %in% c(2014:2023)) %>% 
      count()) / (dados23$ano_fabricacao_veiculo %>% 
                    table() %>% 
                    sum())
  