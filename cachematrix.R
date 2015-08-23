## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(a){
    x <<- a               # setting new values
    inverse <- NULL       # Resetting the inverse value
  }
  
  get <- function () x
  setinverse <- function(temp) inverse <<- temp    # Sets inverse
  getinverse <- function() inverse     # Returns inverse
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) # list of functions

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)){
    message("cached data")     # If inverse value is already in stored
    return(inverse)
  }
  data <- x$get()     # Else part to compute inverse for the first time if no value is cached
  inverse <- solve(data)
  x$setinverse(inverse) 
  inverse    # Sets inverse
}
