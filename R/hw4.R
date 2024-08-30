#' @title Load data for homework 4
#' @param netid a character string representing your NYU netid. Make sure to only use your netID!!
#' @return the `df` data.frame
#' @export
#'
#' @examples
#' \donttest{
#'
#' # run code to load your unique dataset
#' generate_data_hw4(netid = 'gp77') # put net id in quotes
#'
#'
#' }
#'
generate_data_hw4 <- function(netid){
  #draw <- readRDS('data/draw.rds')
  id <- 1:200
  names(id)[1:2] <- c('gp77', 'ms184')
  names(id)[3:length(id)] <- 3:length(id)
  names(draw) <- names(id)
  Sys.setenv(seed = id[netid])
  set.seed(as.numeric(Sys.getenv('seed')))
  N <- sample(80:100, 1) # schools
  M <- sample(85:110, 1) # students per school
  id <- rep(1:N, each=M) #the school identifier

  eps <- rnorm(N*M, mean=0, sd=1 ) #individual (level 1 errors)
  SES <- rnorm(N*M, mean=0, sd=1 ) #everyone has an SES.
  zeta0 <- rnorm(N, mean=0, sd=1 ) #school level intercepts

  #use the mean term in the next line to make zeta1 negatively correlated with zeta0
  zeta1 <- rnorm(N, mean=-1*zeta0, sd=sqrt(2) ) #school level random effect for slope in SES
  Beta_SES <- 2 #effect for SES, on average
  # write outcome based on DGP
  Y <- 0 + zeta0[id] + (zeta1[id] + Beta_SES)*SES + eps
  dat <<- data.frame(Y=Y,SES=SES,id=id)

}
