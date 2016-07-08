cacheSolve <- function(x, ...) {
  ##including lirbary MASS to be able to inverse non-squre matrices
  library(MASS)
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- ginv(mat, ...)
  x$setInverse(inv)
  inv
}