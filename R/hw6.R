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
