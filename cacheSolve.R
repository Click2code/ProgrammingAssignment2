<<<<<<< HEAD
#This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
#If the inverse has already been calculated (and the matrix has not changed), 
#then cacheSolve should retrieve the inverse from the cache.
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
=======
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
>>>>>>> refs/remotes/origin/Click2code-Programming-Assigment-2
}