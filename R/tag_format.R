library(reticulate)

source_python('pit.py')
d <- c('985120005558140', '985120013751519', '900_226000054864')

r  <- sapply(d, pit_dectohex)
back  <- sapply(r, pit_hextodec)

## toHex  <- function(x) {
##     bs <- as.bitstring(as.integer64(x))
##     bits  <- unlist(strsplit(bs, NULL))
##     res  <- rep(NA, 8)
##     for (i in 1:8) {
##         last  <- i * 8
##         first  <- last - 7
##         res[i] <- paste0(bits[first:last], collapse = "")
##     }
##     res <- paste0(sprintf("%X", strtoi(res[4:8], base= 2)), collapse = "")
##     return(res)
## }
