#' @title Load data for homework 2
#' @param netid a character string representing your NYU netid. Make sure to only use your netID!!
#' @return the `schools` data.frame
#' @export
#'
#' @examples
#' \donttest{
#'
#' # run code to load your unique dataset
#' generate_data_hw2(netid = 'gp77') # put net id in quotes
#'
#'
#' }
#'
generate_data_hw2 <- function(netid){
  #draw <- readRDS('data/draw.rds')
  #id is already available in globalEnv 
  names(draw) <- names(id)
  Sys.setenv(seed = id[netid])
  set.seed(as.numeric(Sys.getenv('seed')))
  schools <<- draw[[netid]]

}



#' @title submit answer to homework 2 question 1 part a
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
#' answer_hw2_1a(model0 = .2239, model1 = .05, model2 = .8483)
#'
#'
#' }
#'

answer_hw2_1a <- function(model0 = NULL, model1 = NULL, model2 = NULL){

  if(any(is.null(model0), is.null(model1), is.null(model2))){
    warning('Currently, you have not answered question 1 part b')
  }

  grade_env_hw2$answer_1a_model0 <- model0
  grade_env_hw2$answer_1a_model1 <- model1
  grade_env_hw2$answer_1a_model2 <- model2


}


#' @title submit answer to homework 2 question 1 part b
#' @param model0 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model1 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model2 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1 part b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1 part a like:
#' answer_hw2_1b(model0 = .2239, model1 = .05, model2 = .8483)
#'
#'
#' }
#'

answer_hw2_1b <- function(model0 = NULL, model1 = NULL, model2 = NULL){

  if(any(is.null(model0), is.null(model1), is.null(model2))){
    warning('Currently, you have not answered question 1 part a')
  }

  grade_env_hw2$answer_1b_model0 <- model0
  grade_env_hw2$answer_1b_model1 <- model1
  grade_env_hw2$answer_1b_model2 <- model2


}



#' @title submit answer to homework 2 question 1 part c
#' @param model0 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model1 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @param model2 a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1 part c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1 part a like:
#' answer_hw2_1c(model0 = .2239, model1 = .05, model2 = .8483)
#'
#'
#' }
#'

answer_hw2_1c <- function(model0 = NULL, model1 = NULL, model2 = NULL){

  if(any(is.null(model0), is.null(model1), is.null(model2))){
    warning('Currently, you have not answered question 1 part c')
  }

  grade_env_hw2$answer_1c_model0 <- model0
  grade_env_hw2$answer_1c_model1 <- model1
  grade_env_hw2$answer_1c_model2 <- model2


}



#' @title submit answer to homework 2 question 2
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 2
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2:
#' answer_hw2_2(answer = TRUE) # to indicate true
#'
#' answer_hw2_2(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw2_2 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw2$answer_2 <- answer
}


#' @title submit answer to homework 2 question 3
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 3
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3:
#' answer_hw2_3(answer = TRUE) # to indicate true
#'
#' answer_hw2_3(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw2_3 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw2$answer_3 <- answer
}

#' @title submit answer to homework 2 question 4
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 4
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4:
#' answer_hw2_4(answer = TRUE) # to indicate true
#'
#' answer_hw2_4(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw2_4 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw2$answer_4 <- answer
}

#' @title submit answer to homework 2 question 5
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 5
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 5 like:
#' answer_hw2_5(answer = TRUE) # to indicate true
#'
#' answer_hw2_5(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw2_5 <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 5')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw2$answer_5 <- answer
}
