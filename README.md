
[![Review Assignment Due
Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/315-s1UC)

## Package Description

This package was created as part of a STAT 545B assignment. It is called
“topcount” and its goal is to simplify the process of finding the most
frequent values (top counts) in a given data set.

## Installation

You can install the development version of topcount like so:

package installation can be directly done by calling

``` r
#devtools::install_github("stat545ubc-2025/topcount-solmic")
#then load the package by coding:
library(topcount)
```

if dplyr isn’t imported ensure all functions from external packages use
package::function()

## Example

This is a basic example which shows you how to solve a common problem:

``` r
df <- data.frame(city = c("A","A","B","C","A","B"))
topcount::get_topcount(df, city, n = 2)
```

    ##   city count
    ## 1    A     3
    ## 2    B     2
