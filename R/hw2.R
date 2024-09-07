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
  id <- 1:200
  names(id) <- as.character(1:length(id))
  names(id)[1:60] <- c("gp77", "ms184", "zm2518", "msb7677", "uuc1", "sc5466", "ac11007",
                      "sd5718", "yd2837", "emd14", "dld382", "sd5720", "kf1678", "mh7262",
                      "jeh596", "xh2729", "yh2741", "jh172", "rbj2158", "yk3008", "sk10896",
                      "yl7469", "alt10", "pl1900", "jl15426", "xl4820", "zl5566", "yl8844",
                      "rl5309", "vl2414", "dl5334", "ebl9629", "sl10865", "yl11897",
                      "ll1950", "cl6623", "sm11370", "ap8617", "bsp8894", "ap6355",
                      "cp4101", "xq661", "zq2253", "kr3235", "jds866", "ss17504", "rlt9272",
                      "at6099", "xt595", "vt2289", "cv985", "zw4183", "wy2391", "tz2569",
                      "xz2661", "hz3533", "sz4548", "tz2683","bds9726","tt1014","nyimbs01")
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
