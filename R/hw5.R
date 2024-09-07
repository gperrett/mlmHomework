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



