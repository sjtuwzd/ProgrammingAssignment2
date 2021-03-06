## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The first function, makeVector creates a special "vector", which is really a list containing a function to

##set the value of the vector
##get the value of the vector
##set the value of the mean
##get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set <- function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setinverse <-function(inverse) m<<-inverse
  getinverse <-function() m
  list(set=set, get =get, setmean=setmean, getmean=getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmean()
  if(!is.null(n)){
    message("getting cached data")
    return(m)
  }
  data<- x$get()
  m<-solve(data)
  x$setmean(m)
  m
}
