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
  #id is already available in globalEnv 
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


