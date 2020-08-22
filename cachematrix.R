## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The below function creates a list that sets and gets the value of the matrix and the inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## The below function gives the inverse of the “matrix” returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
          ## Return a matrix that is the inverse of 'x'
}
