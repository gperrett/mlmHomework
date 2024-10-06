#' @title Load core objects for proj management of groups/assignments
#'
set.seed(1357)
#Choose a/b/c/d for each group here
groups <- rep(1:50,each=4) #up to 50 groups
sels <- as.vector(replicate(50,sample(LETTERS[1:4])))
features <- ifelse(sels %in% c("A","C"),"age","size")
gids <- ifelse(sels %in% c("A","B"),"ZIP","nhood")

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
  #id is already available in globalEnv (need to adjust for groups)
  grade_env_proj$netid <- netid #handy for assignment of grades
  names(drawproj) <- names(id) #needs drawproj to exist
  Sys.setenv(seed = id[netid])
  set.seed(as.numeric(Sys.getenv('seed')))
  gid <<- gids[id[netid]]
  feature <<- features[id[netid]]
  housing <<- housing[[id[netid]]]
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
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1b
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1d:
#' answer_proj_1b(answer = .2239)
#'
#' answer_proj_1b(answer = .5483)
#'
#' }
#'
answer_proj_1b <- function(answer = NULL){
  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 1b')
  }

  grade_env_proj$answer_1b <- answer
}



#' @title submit answer to project question 1d
#' @param answer a numeric answer. Do not worry about rounding but provide a minimum or 2 decimal places to all answers
#' @return summary of your current answer for question 1d
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 1d:
#' answer_proj_1d(answer = .2239)
#'
#' answer_proj_1d(answer = .5483)
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



#' @title submit answer to project question 4 part d
#' @param answer a vector
#' @return summary of your current answer for question
#' @export
#'
#' @examples
#' \donttest{
#'
#' # format answer to question 3a:
#'
#' grid <- c(1, 2, 3, 4, 5) # should be length 5!
#' answer_proj_4d(answer = grid)
#'
#'
#' }
#'
answer_proj_4d <- function(answer = NULL){

  if(isFALSE(is.vector(answer))){
    stop('your answer is not a vector. This question will only take a vector')
  }

  if(is.null(answer)){
    answer <- NULL
    warning('Currently, you have not answered question 4d')
  }

  grade_env_proj$answer_4d <- answer
}

#stubs

#answer_proj_1c <-answer_proj_1e <-answer_proj_2a <-answer_proj_2b <-answer_proj_2c <-answer_proj_2d <- answer_proj_2e <- answer_proj_1a

#answer_proj_3b <-  answer_proj_3c <-answer_proj_3d <-answer_proj_3e <-answer_proj_3a <-answer_proj_4a <-answer_proj_4b <- answer_proj_4c <- answer_proj_4e <- answer_proj_1a
