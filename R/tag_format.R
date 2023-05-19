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
  x[is.na(x)] <- "000000000000000"
  r  <- sapply(x, py_dectohex)
  r[r == "000.0000000000"] <- NA
  return(r)
}

#' @rdname dec2hex
#' @export
hex2dec <- function(x) {
  x[is.na(x)] <- "000.0000000000"
  r <- sapply(x, py_hextodec)
  r[r == "000000000000000"] <- NA
  return(r)
}

