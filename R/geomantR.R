#' Geomantic Shield
#' GeomantR - R Package for Geomancy
#' The oldest form of divination

#' @param symbol Choose a symbol do plot on console. Defaults to "o"
#' @import dplyr magrittr knitr
#' @examples
#' geomantR()

geomantR <- function(symbol = "o"){
  is.even <- function(x) x %% 2 == 0
  dotdot <- function(x) ifelse(x == FALSE, symbol, paste(symbol, symbol))
  bindot <- c(1, 2)
  geomantic <- matrix(nrow = 4, ncol = 4)
  colnames(geomantic) <- c("m1", "m2", "m3", "m4")
  m1 = sample(bindot, 4, replace  = T)
  m2 = sample(bindot, 4, replace  = T)
  m3 = sample(bindot, 4, replace  = T)
  m4 = sample(bindot, 4, replace  = T)
  d1 <- c(m1[1], m2[1], m3[1], m4[1])
  d2 <- c(m1[2], m2[2], m3[2], m4[2])
  d3 <- c(m1[3], m2[3], m3[3], m4[3])
  d4 <- c(m1[4], m2[4], m3[4], m4[4])
  geomantic <- data.frame(d4,d3,d2,d1,m4,m3,m2,m1)
  n1 <- geomantic[1:4,7:8] %>%
    rowSums()
  n2 <- geomantic[1:4,5:6] %>%
    rowSums()
  n3 <-  geomantic[1:4,3:4] %>%
    rowSums()
  n4 <- geomantic[1:4,1:2] %>%
    rowSums()
  rw <- data.frame(n1, n2) %>% rowSums()
  lw <- data.frame(n3, n4) %>% rowSums()
  j <-  data.frame(rw, lw) %>% rowSums()
  rec <- data.frame(j, m1) %>% rowSums()
  geomantic <- data.frame(rec, j, lw, rw, n4, n3, n2, n1, d4, d3, d2, d1, m4, m3, m2, m1)
  somarows <- geomantic %>%
    dplyr::mutate_all(is.even) %>%
    dplyr::mutate_all(function(x) ifelse (x == FALSE, 1, 2)) %>%
    dplyr::select(n4:m1) %>%
    rowSums()
  partefort <- sum(somarows)%%12
  geomantic %>%
    dplyr::mutate_all(is.even) %>%
    dplyr::mutate_all(dotdot) -> geomantic
  names(geomantic) <- c("Rec.","Juiz", "Test. Esq.", "Test. Dir.", "Sobrinho 4", "Sobrinho 3",
                        "Sobrinho 2", "Sobrinho 1", "Filha 4", "Filha 3",
                        "Filha 2", "Filha 1", "Mae 4", "Mae 3", "Mae 2", "Mae 1")
  geo1 <- geomantic %>% dplyr::select(9:16)
  geo2 <- geomantic %>% dplyr::select(5:8)
  geo3 <- geomantic %>% dplyr::select(3:4)
  geo4 <- geomantic %>% dplyr::select(2)

  # fort <-paste("Parte da Fortuna: Figura", partefort) # To be implemented...
  knitr::kable(list(geo1, geo2, geo3, geo4), align = "c",escape = T, format = "markdown")
}




