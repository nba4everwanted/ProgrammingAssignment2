## This little functions set a matrix to calculate its inverse


### makeCacheMatrix creates a list containing a function that 
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse matrix 
# 4. get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    invrs <- NULL
  set <- function(y){
    x <<- y
    invrs <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invrs <<- inverse
  getinverse <- function() invrs
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse) 
}


## This function returns the inverse of a matrix
# First it check if the inverse has been computed. If yes,
# it gets the reults directly . Else, it computes the resultys 
# and and update the cache with the help of the setinverse helper 
# function 

# This function assumes that the matrix is always inversible
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invrs < x$getinverse()
  if(!is.null(invrs)){
         message("getting cached data")
         return(m)
  }
  data <- x$get()
  invrs <- solve(data, ...)
  x$setinverse(invrs)
  invrs
}
