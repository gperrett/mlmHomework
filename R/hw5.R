#' @title Load data for homework 5
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
generate_data_hw5 <- function(netid){
  #draw <- readRDS('data/draw.rds')
  #id is already available in globalEnv 
  names(draw5) <- names(id)
  Sys.setenv(seed = id[netid])
  set.seed(as.numeric(Sys.getenv('seed')))
  wagepan <<- draw5[[netid]]

}



#' @title submit answer to homework 5 question 1 part a
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 5a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4:
#' answer_hw5_1a(answer = .2239)
#'
#' answer_hw5_1a(answer = .5483)
#'
#' }
#'
answer_hw5_1a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part a')
  }

  grade_env_hw5$answer_1a <- answer
}

#' @title submit answer to homework 5 question 1part b
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 5b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4:
#' answer_hw5_1b(answer = .2239)
#'
#' answer_hw5_1b(answer = .5483)
#'
#' }
#'
answer_hw5_1b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part b')
  }

  grade_env_hw5$answer_1b <- answer
}

#' @title submit answer to homework 5 question 2
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 5:
#' answer_hw5_2(answer = .2239)
#'
#' answer_hw5_2(answer = .5483)
#'
#' }
#'
answer_hw5_2 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2')
  }

  grade_env_hw5$answer_2 <- answer
}

#' @title submit answer to homework 5 question 3
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 3
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 5:
#' answer_hw5_3(answer = .2239)
#'
#' answer_hw5_3(answer = .5483)
#'
#' }
#'
answer_hw5_3 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2')
  }

  grade_env_hw5$answer_3 <- answer
}


#' @title submit answer to homework 5 question 3
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 3
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 5:
#' answer_hw5_3(answer = .2239)
#'
#' answer_hw5_3(answer = .5483)
#'
#' }
#'
answer_hw5_3 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2')
  }

  grade_env_hw5$answer_3 <- answer
}


#' @title submit answer to homework 5 question 4
#' @param answer a vector of length 19
#' @return summary of your current answer for question 4
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 5:
#'
#' grid <- c(1, 2, 3, 4, 5) # should be length 19!
#' answer_hw5_4(answer = grid)
#'
#'
#' }
#'
answer_hw5_4 <- function(answer = NULL){

  if(isFALSE(is.vector(answer))){
    stop('your answer is not a vector. This question will only take a vector')
  }

  if(isFALSE(length(answer) == 19)){
      warning('vector should be length 19 because you should have 19 different estimates')
    }

  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4')
  }

  grade_env_hw5$answer_4 <- answer
}



#' @title submit answer to homework 5 question 5
#' @param answer a vector of length 19
#' @return summary of your current answer for question 5
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 5:
#'
#' grid <- c(1, 2, 3, 4, 5) # should be length 19!
#' answer_hw5_5(answer = grid)
#'
#'
#' }
#'
answer_hw5_5 <- function(answer = NULL){

  if(isFALSE(is.vector(answer))){
    stop('your answer is not a vector. This question will only take a vector')
  }

  if(isFALSE(length(answer) == 19)){
    warning('vector should be length 19 because you should have 19 different estimates')
  }

  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 5')
  }

  grade_env_hw5$answer_5 <- answer
}


#' @title submit answer to homework 5 question 6
#' @param answer a vector of length 19
#' @return summary of your current answer for question 6
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 6:
#'
#' grid <- c(1, 2, 3, 4, 5) # should be length 19!
#' answer_hw5_5(answer = grid)
#'
#'
#' }
#'
answer_hw5_6 <- function(answer = NULL){

  if(isFALSE(is.vector(answer))){
    stop('your answer is not a vector. This question will only take a vector')
  }

  if(isFALSE(length(answer) == 19)){
    warning('vector should be length 19 because you should have 19 different estimates')
  }

  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 5')
  }

  grade_env_hw5$answer_6 <- answer
}


#' @title submit answer to homework 5 question 7a
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 7a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 7a:
#' answer_hw5_7a(answer = TRUE) # to indicate true
#'
#' answer_hw5_7a(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw5_7a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 7a')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw5$answer_7a <- answer
}


#' @title submit answer to homework 5 question 7a
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 7a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 7b:
#' answer_hw5_7b(answer = TRUE) # to indicate true
#'
#' answer_hw5_7b(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw5_7b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 7a')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw5$answer_7b <- answer
}



