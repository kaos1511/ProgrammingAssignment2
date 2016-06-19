## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
  ## @x: a square invertible matrix
        ## return value: a list containing functions to set/get the matrix and then set/get the inverse
        ##         the list from here is used as the input to cacheSolve() function below
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) m <<- solve
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)

}


## Write a short comment describing this function
## x is the output of makeCacheMatrix() from above
## return value: inverse of the  matrix input to makeCacheMatrix()
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
             m <- x$getinverse()
             
## if the inverse has already been calculated, fetch it from cache....and display below message
           
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
## Else, Compute Inverse here

      data <- x$get()
      m <- solve(data, ...)
      
## SetInverse Function sets value of Inverse in cache

      x$setinverse(m)
      return(m)

}
