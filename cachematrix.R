## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Function to create a special "matrix" object that can cache its inverse
# Initialize the inverse as NULL
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  
  
  # Set the matrix value, # Assign new matrix, # Reset inverse since the matrix has changed
  set <- function(y) {
    x <<- y  
    inv <<- NULL  # Reset inverse since the matrix has changed
  }
  
  # Get the matrix value # Return the matrix
  get <- function() {
    x  
  }
  
  # Set the inverse value # Cache the inverse
  setInverse <- function(inverse) {
    inv <<- inverse  
  }
  
  # Get the inverse value # Return the cached inverse
  getInverse <- function() {
    inv  
  }
  
  # Return a list of the functions
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

# Function to compute the inverse returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
  inv <- x$getInverse()  
  
  if (!is.null(inv)) {
    message("cached data exist")  
    return(inv)  
  }
  
  # If no cached inverse, compute and print it 
  data <- x$get()  
  inv <- solve(data, ...)  
  x$setInverse(inv)  
  
  inv  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## The first time running it, it will be calculated
        ## The second time, it will use the cached value
}
