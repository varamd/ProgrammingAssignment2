## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) s <<- solve 
  getmatrix <- function() s
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
       
        ## Return   
       
}
