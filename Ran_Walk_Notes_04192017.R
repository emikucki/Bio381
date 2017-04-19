
library(animation)
RanWalk <- function(times=100, 
                    n1=50,
                    lambda=1.001, 
                    noiseSD=10) {
  n <- rep(NA, times)
  n[1] <- n1
  noise <- rnorm(n=times, mean=0, sd=noiseSD)
  
  for (i in 1:(times-1)) {
    n[i + 1] <- lambda*n[i] + noise[i] #would write in a manusript as n(t+1) = lambda(nt) + e
    if(n[i + 1] <= 0){
      n[i+ 1] <- NA
      cat("Population extinction at time", 
          i-1, "\n")
      #tkbell()
      break} #end of conditional statement
  } #end of for loop
  return(n)
} #end of function
head(RanWalk())

saveHTML({
  for (i in 1:5) {
    plot(RanWalk(), type="o")
    ani.pause()
  }
}, htmlfile = "RanWalk.html", img.name = "RanWalk.plot", description = "Animation of stochastic random walks (model population growth"))
ani.options(oopt)

