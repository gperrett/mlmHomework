#' @title Load data for homework 3
#' @param netid a character string representing your NYU netid. Make sure to only use your netID!!
#' @return the `df` data.frame
#' @export
#'
#' @examples
#' \donttest{
#'
#' # run code to load your unique dataset
#' generate_data_hw3(netid = 'gp77') # put net id in quotes
#'
#'
#' }
#'
generate_data_hw3 <- function(netid){
  #draw <- readRDS('data/draw.rds')
  id <- 1:200
  names(id)[1:2] <- c('gp77', 'ms184')
  names(id)[3:length(id)] <- 3:length(id)
  names(draw) <- names(id)
  Sys.setenv(seed = id[netid])
  set.seed(as.numeric(Sys.getenv('seed')))
  N <- sample(80:100, 1) # schools
  M <- sample(85:105, 1) # students per school
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



#' @title submit answer to homework 3 question 1 part a
#' @param model0 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model1 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model2 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1 part a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1 part a like:
#' answer_hw3_1a(model0 = .2239, model1 = .05, model2 = .8483)
#'
#'
#' }
#'

answer_hw3_1a <- function(model0 = NULL, model1 = NULL, model2 = NULL, model3 = NULL){

  if(any(is.null(model0), is.null(model1), is.null(model2))){
    warning('Currently, you have not answered question 1 part b')
  }

  grade_env_hw3$answer_1a_model0 <- model0
  grade_env_hw3$answer_1a_model1 <- model1
  grade_env_hw3$answer_1a_model2 <- model2
  grade_env_hw3$answer_1a_model3 <- model3


}


#' @title submit answer to homework 3 question 1 part b
#' @param model0 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model1 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model2 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1 part b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1 part b like:
#' answer_hw3_1b(model0 = .2239, model1 = .05, model2 = .8483)
#'
#'
#' }
#'

answer_hw3_1b <- function(model0 = NULL, model1 = NULL, model2 = NULL, model3 = NULL){

  if(any(is.null(model0), is.null(model1), is.null(model2))){
    warning('Currently, you have not answered question 1 part b')
  }

  grade_env_hw3$answer_1b_model0 <- model0
  grade_env_hw3$answer_1b_model1 <- model1
  grade_env_hw3$answer_1b_model2 <- model2
  grade_env_hw3$answer_1b_model3 <- model3


}



#' @title submit answer to homework 3 question 1 part c
#' @param model0 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model1 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model2 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1 part b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1 part c like:
#' answer_hw3_1b(model0 = .2239, model1 = .05, model2 = .8483)
#'
#'
#' }
#'

answer_hw3_1c <- function(model0 = NULL, model1 = NULL, model2 = NULL, model3 = NULL){

  if(any(is.null(model0), is.null(model1), is.null(model2))){
    warning('Currently, you have not answered question 1 part b')
  }

  grade_env_hw3$answer_1c_model0 <- model0
  grade_env_hw3$answer_1c_model1 <- model1
  grade_env_hw3$answer_1c_model2 <- model2
  grade_env_hw3$answer_1c_model3 <- model3


}


#' @title submit answer to homework 3 question 2 part a
#' @param model0 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model1 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model2 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2 part a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2 part a like:
#' answer_hw3_2a(model0 = .2239, model1 = .05, model2 = .8483)
#'
#'
#' }
#'

answer_hw3_2a <- function(model0 = NULL, model1 = NULL, model2 = NULL, model3 = NULL){

  if(any(is.null(model0), is.null(model1), is.null(model2))){
    warning('Currently, you have not answered question 1 part b')
  }

  grade_env_hw3$answer_2a_model0 <- model0
  grade_env_hw3$answer_2a_model1 <- model1
  grade_env_hw3$answer_2a_model2 <- model2
  grade_env_hw3$answer_2a_model3 <- model3


}


#' @title submit answer to homework 3 question 2 b
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 2 b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2:
#' answer_hw3_2b(answer = TRUE) # to indicate true
#'
#' answer_hw3_2b(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw3_2b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw3$answer_2b <- answer
}


#' @title submit answer to homework 3 question 2 part c
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2 part c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2 part c like:
#' answer_hw3_2c(answer = .2239)
#'
#' answer_hw3_2c(answer = .5483)
#'
#' }
#'
answer_hw3_2c <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2 part c')
  }

  grade_env_hw3$answer_2c <- answer
}



#' @title submit answer to homework 3 question 3
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 3
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3:
#' answer_hw3_3(answer = .2239)
#'
#' answer_hw3_3(answer = .5483)
#'
#' }
#'
answer_hw3_3 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3')
  }

  grade_env_hw3$answer_3 <- answer
}


#' @title submit answer to homework 3 question 4
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 4
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4:
#' answer_hw3_4(answer = TRUE) # to indicate true
#'
#' answer_hw3_4(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw3_4 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw3$answer_4 <- answer
}
