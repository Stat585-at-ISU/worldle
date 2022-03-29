#' Mymean function
#'
#' @param x numeric value
#' @param na.rm logical value - should missing values be ignored?
#' @importFrom stats na.omit
#' @export
mymean <- function(x, na.rm=FALSE){
  if (!is.numeric(x)) {
    warning("Vector x is not numeric")
    return(NA)
  }

  if (na.rm == TRUE) x <- na.omit(x)

  sum(x)/length(x)
}
