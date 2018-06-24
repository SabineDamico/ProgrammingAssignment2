## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function (y){
        x <<- y
        i <<- NULL
}
get<- function()x
setinvs = function(inverse) 
invs <<- inverse 
getinvs = function() inv
list(set=set, 
     get=get, 
     setinvs=setinvs, 
     getinvs=getinvs)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invs <- x$getInvs()
        if (!is.null(invs)) {
                message("getting cached data")
                return(invs)
        }
        mat <- x$get()
        invs <- solve(mat, ...)
        x$setInverse(invs)
        invs
        }
