## library(reticulate)

## source_python('pit.py')
## d <- c('985120005558140', '985120013751519', '900_226000054864')

#' Convert between pittag formats
#'
#' `dec2hex()` and `hex2dec()` converts between different display fomats used for pittags.
#' Pittag ids are 64-bit numbers. The pittag is usually presented as a
#' text string with either decimal and hexadecimal numbers. These functions
#' convert between these two formats
#'
#' @param x character vector
#'
#' @return
#' A character vector of of pittags converted to new format.
#' @export
#'
#' @examples
#' dec <- c('985120005558140', '985120013751519', '900_226000054864')
#' (hex <- dec2hex(dec))
#' hex2dec(hex)
dec2hex <- function(x) {
  r  <- sapply(x, py_dectohex)
  return(r)
}

#' @rdname dec2hex
#' @export
hex2dec <- function(x) {
  r <- sapply(x, py_hextodec)
  return(r)
}

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
