#' @title Load data for homework 6
#' @param netid a character string representing your NYU netid. Make sure to only use your netID!!
#' @return the `schools` data.frame
#' @export
#'
#' @examples
#' \donttest{
#'
#' # run code to load your unique dataset
#' generate_data_hw5(netid = 'gp77') # put net id in quotes
#'
#'
#' }
#'
generate_data_hw6 <- function(netid){
  #draw <- readRDS('data/draw.rds')
  #id is already available in globalEnv 
  names(draw6) <- names(id)
  Sys.setenv(seed = id[netid])
  set.seed(as.numeric(Sys.getenv('seed')))
  dat <<- draw6[[netid]]

}


#' @title submit answer to homework 6 question 1
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1:
#' answer_hw6_1(answer = .2239)
#'
#' answer_hw6_1(answer = .5483)
#'
#' }
#'
answer_hw6_1 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1')
  }

  grade_env_hw6$answer_1 <- answer
}


#' @title submit answer to homework 6 question 2
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2:
#' answer_hw6_2(answer = .2239)
#'
#' answer_hw6_2(answer = .5483)
#'
#' }
#'
answer_hw6_2 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2')
  }

  grade_env_hw6$answer_2 <- answer
}




#' @title submit answer to homework 6 question 3 part a
#' @param answer a vector
#' @return summary of your current answer for question
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3a:
#'
#' grid <- c(1, 2, 3, 4, 5) # should be length 19!
#' answer_hw6_3a(answer = grid)
#'
#'
#' }
#'
answer_hw6_3a <- function(answer = NULL){

  if(isFALSE(is.vector(answer))){
    stop('your answer is not a vector. This question will only take a vector')
  }

  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3a')
  }

  grade_env_hw6$answer_3a <- answer
}


#' @title submit answer to homework 6 question 3 part b
#' @param answer a vector
#' @return summary of your current answer for question
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3b:
#'
#' grid <- c(1, 2, 3, 4, 5) # should be length 19!
#' answer_hw6_3b(answer = grid)
#'
#'
#' }
#'
answer_hw6_3b <- function(answer = NULL){

  if(isFALSE(is.vector(answer))){
    stop('your answer is not a vector. This question will only take a vector')
  }

  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3b')
  }

  grade_env_hw5$answer_3b <- answer
}


#' @title submit answer to homework 6 question 4
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 4
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4:
#' answer_hw6_4(answer = TRUE) # to indicate true
#'
#' answer_hw6_4(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw6_4 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw6$answer_4 <- answer
}


#' @title submit answer to homework 6 question 5a
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 5a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 5a:
#' answer_hw6_5a(answer = .2239)
#'
#' answer_hw6_5a(answer = .5483)
#'
#' }
#'
answer_hw6_5a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 5a')
  }

  grade_env_hw6$answer_5a <- answer
}


#' @title submit answer to homework 6 question 5b
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 5b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 5b:
#' answer_hw6_5b(answer = TRUE) # to indicate true
#'
#' answer_hw6_5b(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw6_5b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 5b')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw6$answer_5b <- answer
}

#' @title submit answer to homework 6 question 5c
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 5c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 5c:
#' answer_hw6_5c(answer = TRUE) # to indicate true
#'
#' answer_hw6_5c(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw6_5c <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 5c')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw6$answer_5c <- answer
}

#' @title submit answer to homework 6 question 6
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 6
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 6:
#' answer_hw6_6(answer = TRUE) # to indicate true
#'
#' answer_hw6_6(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw6_6 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 6')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw6$answer_6 <- answer
}
