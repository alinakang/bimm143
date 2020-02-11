Class07
================
Alina Kang
1/28/2020

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax
for authoring HTML, PDF, and MS Word documents. For more details on
using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that
includes both content as well as the output of any embedded R code
chunks within the document. You can embed an R code chunk like
this:

``` r
df1 <- data.frame(IDs=c("gene1", "gene2", "gene 3"), exp=c(2,1,1), stringsAsFactors = FALSE)
df2 <- data.frame(IDs=c("gene2", "gene4", "gene3", "gene5"), exp=c(-2, NA, 1, 2), stringsAsFactors = FALSE)
```

``` r
x <- df1$IDs
y <- df2$IDs


intersect(x,y)
```

    ## [1] "gene2"

``` r
# What elements of x exist in y
x%in%y
```

    ## [1] FALSE  TRUE FALSE

``` r
# What elements of y exist in x
y%in%x
```

    ## [1]  TRUE FALSE FALSE FALSE

``` r
y[y%in%x]
```

    ## [1] "gene2"

``` r
cbind(x[x%in%y], y[y%in%x])
```

    ##      [,1]    [,2]   
    ## [1,] "gene2" "gene2"

``` r
gene_intersect2 <- function(x,y) {
  cbind(df1[df1$IDs %in% df2$IDs], df2[df2$IDs %in% df1$IDs], "exp")
}

x <- df1$IDs
y <- df2$IDs
```
