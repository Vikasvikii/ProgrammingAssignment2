## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
   matinv <- NULL
   set <- function(y) {
   }
    get <- function ()x
    setinverse <- function(inverse) matinv <<- inverse
    getinverse <- function() mat
    list (set= set, get=get, setinverse=setinverse, getinverse=getinverse)
   
}


## The function below computes the inverse of the above matrix if not computed or else it gives computed inverse


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        matinv <- x$getinverse()
        if(!is.null(matinv)) {
          message ("getting cached data")
          return(matinv)
        }
        data <- x$get()
        matinv <- solve(data,...)
        x$setinverse(matinv)
        matinv
}

