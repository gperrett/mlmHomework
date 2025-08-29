#' @title Load data for project
#' @param netid a character string representing your NYU netid. Make sure to only use your netID!!
#' @return the `housing` data.frame
#' @export
#'
#' @examples
#' \donttest{
#'
#' # run code to load your unique dataset
#' generate_data_proj(netid = 'gp77') # put net id in quotes
#'
#'
#' }
#'
generate_data_proj <- function(netid){
  #USERid is already available in globalEnv (need to adjust for groups)
  grade_env_proj$netid <- netid #handy for assignment of grades
  Sys.setenv(seed = USERid[netid])
  set.seed(as.numeric(Sys.getenv('seed')))
  gid <<- gids[idGrouped[netid]]
  feature <<- features[idGrouped[netid]]
  groups <- rep(1:50,each=4) #up to 50 groups
  housingDat <<- housing[[groups[idGrouped[netid]]]]
  netid <<- netid #handy
  groupNum <<- idGrouped[netid] #groups[groupNum] is group number (I know it is bizzare, but fewer changes this way)
}


#' @title submit answer to project question 1a
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 1a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1a:
#' answer_proj_1a(answer = TRUE) # to indicate true
#'
#' answer_proj_1a(answer = FALSE) # to indicate false
#'
#'
#' }
#
answer_proj_1a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1a')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_proj$answer_1a <- answer
}


#' @title submit answer to project question 1b
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 1b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1b:
#' answer_proj_1a(answer = TRUE) # to indicate true
#'
#' answer_proj_1a(answer = FALSE) # to indicate false
#'
#' }
#'
answer_proj_1b <- function(answer = NULL){

  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1b')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }
  
  grade_env_proj$answer_1b <- answer
}

#' @title submit answer to project question 1c
#' @param answer a character vector
#' @return summary of your current answer for question 1c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1d:
#' pairNames <- c("xxx", "yyy") # should be length 2!
#' answer_proj_1c(answer = pairNames)
#'
#' }
#'
answer_proj_1c <- function(answer = NULL){
   
  if(isFALSE(is.vector(answer))||length(answer)!=2){
     stop('your answer is not a vector of length 2. This question will only take a character vector')
  }
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1c')
  }

  grade_env_proj$answer_1c <- answer
}


#' @title submit answer to project question 1d
#' @param answer a numeric answer, an integer from (1,2,3,4,5)
#' @return summary of your current answer for question 1d
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1d:
#' answer_proj_1d(answer = 1)
#'
#' answer_proj_1d(answer = 2)
#'
#' }
#'
answer_proj_1d <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1d')
  }

  grade_env_proj$answer_1d <- answer
}

#' @title submit answer to project question 2a
#' @param answer a numeric answer, an integer from (1,2,3)
#' @return summary of your current answer for question 2a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2a:
#' answer_proj_2a(answer = 1)
#'
#' answer_proj_2a(answer = 2)
#'
#' }
#'
answer_proj_2a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2a')
  }

  grade_env_proj$answer_2a <- answer
}

#' @title submit answer to project question 2b
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2b:
#' answer_proj_2b(answer = .2239)
#'
#' answer_proj_2b(answer = .5483)
#'
#' }
#'
answer_proj_2b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2b')
  }

  grade_env_proj$answer_2b <- answer
}

#' @title submit answer to project question 2c
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2c:
#' answer_proj_2c(answer = .2239)
#'
#' answer_proj_2c(answer = .5483)
#'
#' }
#'
answer_proj_2c <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2c')
  }

  grade_env_proj$answer_2c <- answer
}


#' @title submit answer to project question 2d
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 2d
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2d:
#' answer_proj_2d(answer = .2239)
#'
#' answer_proj_2d(answer = .5483)
#'
#' }
#'
answer_proj_2d <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2d')
  }

  grade_env_proj$answer_2d <- answer
}


#' @title submit answer to project question 2e
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 2e
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 2e:
#' answer_proj_2e(answer = TRUE) # to indicate true
#'
#' answer_proj_2e(answer = FALSE) # to indicate false
#'
#' }
#'
answer_proj_2e <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 2e')
  }
  
  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_proj$answer_2e <- answer
}

#' @title submit answer to project question 3a
#' @param answer a numeric answer, an intergerfrom (1,2,3)
#' @return summary of your current answer for question 3a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3a:
#' answer_proj_3a(answer = 1)
#'
#' answer_proj_3a(answer = 2)
#'
#' }
#'
answer_proj_3a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3a')
  }

  grade_env_proj$answer_3a <- answer
}

#' @title submit answer to project question 3b
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 3b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3b:
#' answer_proj_3b(answer = TRUE) # to indicate true
#'
#' answer_proj_3b(answer = FALSE) # to indicate false
#'
#' }
#'
answer_proj_3b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3b')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }
  
  grade_env_proj$answer_3b <- answer
}

#' @title submit answer to project question 3c
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 3c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3c:
#' answer_proj_3c(answer = .2239)
#'
#' answer_proj_3c(answer = .5483)
#'
#' }
#'
answer_proj_3c <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3c')
  }

  grade_env_proj$answer_3c <- answer
}

#' @title submit answer to project question 3d
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 3d
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3d:
#' answer_proj_3d(answer = TRUE) # to indicate true
#'
#' answer_proj_3d(answer = FALSE) # to indicate false
#'
#' }
#'
answer_proj_3d <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3d')
  }
  
  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_proj$answer_3d <- answer
}

#' @title submit answer to project question 3e
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 3e
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3e:
#' answer_proj_3e(answer = .2239)
#'
#' answer_proj_3e(answer = .5483)
#'
#' }
#'
answer_proj_3e <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 3e')
  }

  grade_env_proj$answer_3e <- answer
}

#' @title submit answer to project question 4a
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 4a
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4a:
#' answer_proj_4a(answer = .2239)
#'
#' answer_proj_4a(answer = .5483)
#'
#' }
#'
answer_proj_4a <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4a')
  }

  grade_env_proj$answer_4a <- answer
}

#' @title submit answer to project question 4b
#' @param answer a logical indicating TRUE or FALSE
#' @return summary of your current answer for question 4b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4b:
#' answer_proj_4b(answer = TRUE) # to indicate true
#'
#' answer_proj_4b(answer = FALSE) # to indicate false
#'
#' }
#'
answer_proj_4b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4b')
  }

  if(is.character(answer)){
    answer <- as.logical(answer)
  }

  grade_env_proj$answer_4b <- answer
}

#' @title submit answer to project question 4c
#' @param answer a numeric answer, 1, 2 or 3.
#' @return summary of your current answer for question 4c
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4c:
#' answer_proj_4c(answer = 1)
#'
#' answer_proj_4c(answer = 2)
#'
#' }
#'
answer_proj_4c <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4c')
  }

  grade_env_proj$answer_4c <- answer
}


#' @title submit answer to project question 4 part d
#' @param answer a vector
#' @return summary of your current answer for question
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4d:
#'
#' grid <- c(1.1, 2.2, 3.3, 4.4, 5.5) # should be length 5!
#' answer_proj_4d(answer = grid)
#'
#'
#' }
#'
answer_proj_4d <- function(answer = NULL){

  if(isFALSE(is.vector(answer))||length(answer)!=5){
    stop('your answer is not a vector. This question will only take a vector of length 5')
  }

  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4d')
  }

  grade_env_proj$answer_4d <- answer
}


#' @title submit answer to project question 4e
#' @param answer a vector of length 5
#' @return summary of your current answer for question 4e
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 4e:
#'
#' grid <- c(1.1, 2.2, 3.3, 4.4, 5.5) # should be length 5!
#' answer_proj_4d(answer = grid)
#'
#' }
#'
answer_proj_4e <- function(answer = NULL){
    
  if(isFALSE(is.vector(answer))||length(answer)!=5){
      stop('your answer is not a vector. This question will only take a vector of length 5')
  }
  
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4e')
  }

  grade_env_proj$answer_4e <- answer
}

