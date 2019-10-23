# GeomantR - Geomancia no R

English version [below](#english-version) 

### Overview 

Segundo o [Wikipedia](https://pt.wikipedia.org/wiki/Geomancia):

> Geomancia (Grego: γεωμαντεία, "adivinhação da terra") é um método de adivinhação que interpreta marcas no chão ou os padrões formados por punhados de solo, rochas ou areia lançados. A forma mais prevalente de geomancia divinatória envolve a interpretação de uma série de 16 figuras formadas por um processo aleatório que envolve recursão seguido de uma análise, frequentemente aumentada com interpretações astrológicas.

O presente pacote permite a divinação por geomancia, ao criar uma tábua geomântica no console do R. A função `geomantR()` sorteia cada linha das mães, a partir dela cria as filhas e calcula os sobrinhos, testemunhas e juiz. A interpretação fica por conta do querente. 

### Instalação:
```
# install.packages("devtools")
devtools::install_github("mateuspestana/geomantR")
```
### Uso:
```
library(geomantR)

geomantR()

geomantR(symbol = "o")

geomantR(symbol = "+")
```

### Futuras implementações: 

[ ] Nome das casas

[ ] Parte da Fortuna e outros aspectos

[ ] Retificador

[ ] Nome das figuras

## English version

### Overview

Based on [Wikipedia](https://en.wikipedia.org/wiki/Geomancy):

> Geomancy (Greek: γεωμαντεία, "earth divination") is a method of divination that interprets markings on the ground or the patterns formed by tossed handfuls of soil, rocks, or sand. The most prevalent form of divinatory geomancy involves interpreting a series of 16 figures formed by a randomized process that involves recursion followed by analyzing them, often augmented with astrological interpretations.

The present package helps to divinate upon geomancy, creating a geomantic shield on R console. The function `geomantR()` samples each line of the Mothers, then creates the daughters and calculates the nieces, witnessess and judge. The interpretation is upon the querent. 

### Instalation:
```
# install.packages("devtools")
devtools::install_github("mateuspestana/geomantR")
```

### Usage: 
```
library(geomantR)

geomantR()

geomantR(symbol = "o")

geomantR(symbol = "+")
```


### Future implementations:

[ ] Astrological Houses

[ ] Part of Fortune and other aspects

[ ] Rectifier

[ ] Figures' names
