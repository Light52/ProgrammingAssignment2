## Put comments here that give an overall description of what your
## functions do
## calcaulate and cachce the inverse of a matrix

## Write a short comment describing this function
# set value of matrix
#get value of matrix
#set value of inverse
#get value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get, setinverse = setinverse, getinv = getinv)
}


## Write a short comment describing this function
## Checks if inverse has already been calculated, if it has, get from cache,
## Otherwise, calculate the inverse and cache it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
