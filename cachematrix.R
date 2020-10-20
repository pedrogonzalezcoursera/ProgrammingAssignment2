## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## Cached the matrix and deliver functions to set de matrix, get
## the matrix, and set/get de inverse of the matrix.
        m <- NULL
      set <- function(y) {
              x <<- Y
              m <<- NULL
      }
      get <- function() x
      setinverse <- function(inverse) m <<- inverse
      getinverse <- function() m
      list(set = set, get = get, setinverse = setinverse,
           getinverse = getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Cached de matrix if is not calculated previusly. If was not
        ## cached, then calculate the inverse.
      m <- x$getinverse()
      if (!is.null(m)) {
              message ("getting cached matrix")
              return(m)
      }
      x.data <- x$get()
      m <- solve(x.data,...)
      x$setinverse(m)
      m
}
