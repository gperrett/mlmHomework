#' @title Load data for homework 1
#' @param netid a character string representing your NYU netid. Make sure to only use your netID!!
#' @return the `schools` data.frame
#' @export
#'
#' @examples
#' \donttest{
#'
#' # run code to load your unique dataset
#' generate_data_hw1(netid = 'gp77') # put net id in quotes
#'
#'
#' }
#'
generate_data_hw1 <- function(netid){
  #draw <- readRDS('data/draw.rds')
  id <- 1:200
  names(id) <- as.character(1:length(id))
  names(id)[1:62] <- c("gp77", "ms184", "zm2518", "msb7677", "uuc1", "sc5466", "ac11007",
                      "sd5718", "yd2837", "emd14", "dld382", "sd5720", "kf1678", "mh7262",
                      "jeh596", "xh2729", "yh2741", "jh172", "rbj2158", "yk3008", "sk10896",
                      "yl7469", "alt10", "pl1900", "jl15426", "xl4820", "zl5566", "yl8844",
                      "rl5309", "vl2414", "dl5334", "ebl9629", "sl10865", "yl11897",
                      "ll1950", "cl6623", "sm11370", "ap8617", "bsp8894", "ap6355",
                      "cp4101", "xq661", "zq2253", "kr3235", "jds866", "ss17504", "rlt9272",
                      "at6099", "xt595", "vt2289", "cv985", "zw4183", "wy2391", "tz2569",
                      "xz2661", "hz3533", "sz4548", "tz2683","bds9726","tt1014","nyimbs01","lel8218")
  names(draw) <- names(id)
  Sys.setenv(seed = id[netid])
  set.seed(as.numeric(Sys.getenv('seed')))
  schools <<- draw[[netid]]

}


#' @title Reveal question 3a
#' @return the question for 3 part a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # run code to print the question
#' question_hw1_3a()
#'
#'
#' }
#'
question_hw1_3a <- function(){
  set.seed(as.numeric(Sys.getenv('seed')))
  coef <- sample(x = c(1:20), size = 1)
  cat(paste0('Using model1, report the expected difference between outcomes comparing a teacher with 0 and ', coef, ' years of teaching experience, all else equal'))

}

#' @title Reveal question 4a
#' @return the question for 4 part a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # run code to print the question
#' question_hw1_4a()
#'
#'
#' }
#'
question_hw1_4a <- function(){
  set.seed(as.numeric(Sys.getenv('seed')))
  coef <- sample(x = c(1:20), size = 1)
  cat(paste0('Using model2, report the expected difference between outcomes comparing a teacher with 0 and ', coef, ' years of teaching experience, all else equal'))

}


#' @title submit answer to homework 1 question 1 part a
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1 part a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1 part a like:
#' answer_hw1_1a(answer = .2239)
#'
#' answer_hw1_1a(answer = .5483)
#'
#' }
#'
answer_hw1_1a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part a')
  }

  grade_env_hw1$answer_1a <- answer

}


#' @title submit answer to homework 1 question 1 part b
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1 part b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1 part b like:
#' answer_hw1_1b(answer = .2239)
#'
#' answer_hw1_1b(answer = .5483)
#'
#' }
#'
answer_hw1_1b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part b')
  }

  grade_env_hw1$answer_1b <- answer
}


#' @title submit answer to homework 1 question 1 part c
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1 part c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1 part b like:
#' answer_hw1_1c(answer = .2239)
#'
#' answer_hw1_1c(answer = .5483)
#'
#' }
#'
answer_hw1_1c <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part c')
  }

  grade_env_hw1$answer_1c <- answer
}


#' @title submit answer to homework 1 question 1 part d
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1 part d
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1 part d like:
#' answer_hw1_1d(answer = .2239)
#'
#' answer_hw1_1d(answer = .5483)
#'
#' }
#'
answer_hw1_1d <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1 part d')
  }

  grade_env_hw1$answer_1d <- answer
}


#' @title submit answer to homework 1 question 2 part a
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2 part a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2 part a like:
#' answer_hw1_2a(answer = .2239)
#'
#' answer_hw1_2a(answer = .5483)
#'
#' }
#'
answer_hw1_2a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2 part a')
  }

  grade_env_hw1$answer_2a <- answer
}


#' @title submit answer to homework 1 question 2 part b
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2 part b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2 part b like:
#' answer_hw1_2b(answer = .2239)
#'
#' answer_hw1_2b(answer = .5483)
#'
#' }
#'
answer_hw1_2b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2 part b')
  }

  grade_env_hw1$answer_2b <- answer
}

#' @title submit answer to homework 1 question 2 part c
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2 part c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2 part c like:
#' answer_hw1_2c(answer = .2239)
#'
#' answer_hw1_2c(answer = .5483)
#'
#' }
#
answer_hw1_2c <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2 part c')
  }

  grade_env_hw1$answer_2c <- answer
}

#' @title submit answer to homework 1 question 2 part d
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2 part d
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2 part d like:
#' answer_hw1_2d(answer = .2239)
#'
#' answer_hw1_2d(answer = .5483)
#'
#' }
#
answer_hw1_2d <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2 part d')
  }

  grade_env_hw1$answer_2d <- answer
}


#' @title submit answer to homework 1 question 3 part a
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 3 part a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3 part a like:
#' answer_hw1_3a(answer = .2239)
#'
#' answer_hw1_3a(answer = .5483)
#'
#' }
#
answer_hw1_3a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3 part a')
  }

  grade_env_hw1$answer_3a <- answer
}


#' @title submit answer to homework 1 question 3 part b
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 3 part b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3 part b like:
#' answer_hw1_3b(answer = .2239)
#'
#' answer_hw1_3b(answer = .5483)
#'
#' }
#
answer_hw1_3b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3 part b')
  }

  grade_env_hw1$answer_3b <- answer
}


#' @title submit answer to homework 1 question 3 part c
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 3 part c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3 part c like:
#' answer_hw1_3c(answer = TRUE) # to indicate true
#'
#' answer_hw1_3c(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw1_3c <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3 part c')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw1$answer_3c <- answer
}


#' @title submit answer to homework 1 question 4 part a
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 4 part a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4 part a like:
#' answer_hw1_4a(answer = TRUE) # to indicate true
#'
#' answer_hw1_4a(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw1_4a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4 part a')
  }

  grade_env_hw1$answer_4a <- answer
}

#' @title submit answer to homework 1 question 4 part b
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 4 part b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4 part b like:
#' answer_hw1_4b(answer = TRUE) # to indicate true
#'
#' answer_hw1_4b(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw1_4b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4 part a')
  }

  grade_env_hw1$answer_4b <- answer
}


#' @title submit answer to homework 1 question 4 part c
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 4 part c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4 part c like:
#' answer_hw1_4c(answer = TRUE) # to indicate true
#'
#' answer_hw1_4c(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_hw1_4c <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4 part c')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_hw1$answer_4c <- answer
}

