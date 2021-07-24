makeCacheMatrix <- function( m = matrix() ) {
  
 
  inv <- NULL
  

  set <- function( matrix ) {
    m <<- matrix
    inv <<- NULL
  }
  
 
  get <- function() {
 
    m
  }
  
 
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  
 
  getInverse <- function() {

    i
  }


}


cacheSolve <- function(x, ...) {
  

  m <- x$getInverse()
  
  if( !is.null(m) ) {
    message("getting cache")
    return(m)
  }
  
  
  data <- x$get()
  
  
  m <- solve(data) %*% data

  x$setInverse(m)
  

  m
}