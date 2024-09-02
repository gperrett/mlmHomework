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
  names(id)[1:58] <- c("gp77", "ms184", "zm2518", "msb7677", "uuc1", "sc5466", "ac11007",
                       "sd5718", "yd2837", "emd14", "dld382", "sd5720", "kf1678", "mh7262",
                       "jeh596", "xh2729", "yh2741", "jh172", "rbj2158", "yk3008", "sk10896",
                       "yl7469", "alt10", "pl1900", "jl15426", "xl4820", "zl5566", "yl8844",
                       "rl5309", "vl2414", "dl5334", "ebl9629", "sl10865", "yl11897",
                       "ll1950", "cl6623", "sm11370", "ap8617", "bsp8894", "ap6355",
                       "cp4101", "xq661", "zq2253", "kr3235", "jds866", "ss17504", "rlt9272",
                       "at6099", "xt595", "vt2289", "cv985", "zw4183", "wy2391", "tz2569",
                       "xz2661", "hz3533", "sz4548", "tz2683")
  names(id)[59:length(id)] <- 59:length(id)
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



#' @title submit answer to homework 4 question 1 part a
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2 part c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1a like:
#' answer_hw4_1a(answer = .2239)
#'
#' answer_hw4_1a(answer = .5483)
#'
#' }
#'
answer_hw4_1a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part a')
  }

  grade_env_hw4$answer_1a <- answer
}


#' @title submit answer to homework 4 question 1 part b
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1 part b like:
#' answer_hw4_1b(answer = .2239)
#'
#' answer_hw4_1b(answer = .5483)
#'
#' }
#'
answer_hw4_1b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part a')
  }

  grade_env_hw4$answer_1b <- answer
}


#' @title submit answer to homework 4 question 2 part a
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2 part a like:
#' answer_hw4_2a(answer = .2239)
#'
#' answer_hw4_2a(answer = .5483)
#'
#' }
#'
answer_hw4_2a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part a')
  }

  grade_env_hw4$answer_2a <- answer
}


#' @title submit answer to homework 4 question 2 part b
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2 part b like:
#' answer_hw4_2b(answer = .2239)
#'
#' answer_hw4_2b(answer = .5483)
#'
#' }
#'
answer_hw4_2b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part a')
  }

  grade_env_hw4$answer_2b<- answer
}


#' @title submit answer to homework 4 question 3 part a
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3 part a like:
#' answer_hw4_3a(answer = .2239)
#'
#' answer_hw4_3a(answer = .5483)
#'
#' }
#'
answer_hw4_3a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part a')
  }

  grade_env_hw4$answer_3a <- answer
}


#' @title submit answer to homework 4 question 3 part b
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 3b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3 part b like:
#' answer_hw4_3b(answer = .2239)
#'
#' answer_hw4_3b(answer = .5483)
#'
#' }
#'
answer_hw4_3b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part a')
  }

  grade_env_hw4$answer_3b<- answer
}


#' @title Reveal hw 4 question4
#' @return Question 4
#' @export
#'
#' @examples
#' \donttest{
#'
#' # Run the function
#'
#' answer_hw4_4()
#'
#' }
#'
question_hw4_4 <- function(){
  set.seed(as.numeric(Sys.getenv('seed')))
  paste0('Using the information above, estimate the variance between groups (V_B) when SES is ', round(runif(1, -2, 2), 2))

}



#' @title submit answer to homework 4 question 4
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 4
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4:
#' answer_hw4_4(answer = .2239)
#'
#' answer_hw4_4(answer = .5483)
#'
#' }
#'
answer_hw4_4 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part a')
  }

  grade_env_hw4$answer_4<- answer
}


