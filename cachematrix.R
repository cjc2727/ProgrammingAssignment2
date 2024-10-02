## Put comments here that give an overall description of what your
## functions do
# This function creates a special "matrix" object that can cache its inverse
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL # Initialize the inverse to NULL

#function to set the matrix
set <- function(y) {
        x <<- y
        inv <<- NULL # Reset the inverse when the matrix changes
}
# Function to get the matrix 
get <- function () {
        x
}

# Function to set the inverse
set Inverse <- function(inverse) {
        inv <<- inverse
}

# Function to get the inverse
getInverse <- function() {
        inv
}

# Return a list containing the above functions
list(set = set, get = get, setInverse = setInverse, get Inverse = get Inverse)
}
        

## Write a short comment describing this function
# This function computes the inverse of the special matrix returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
        inv <- x$getInverse() # Get the cached inverse, if available 

        # If the inverse is cached, return it
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
                }

        # Otherwise, calculate the inverse
        data <- x$get() # Get the matrix
        inv <- solve(data,...) # Compute the inverse of the matrix
        x$setInverse(inv) # Cache the inverse

        inv # Return the computed inverse (this is the matrix that is the inverse of 'x')
        ## Return a matrix that is the inverse of 'x'
}
