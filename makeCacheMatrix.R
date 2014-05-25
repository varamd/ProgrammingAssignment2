## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
 # s will store the cached inverse matrix
  s <- NULL
  
  ## Set for the matrix
  
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  
  ## Get for the Matrix 
  
  get <- function() x
  setmatrix <- function(solve) s <<- solve 
  getmatrix <- function() s
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
       
        ## Return   
       
}
