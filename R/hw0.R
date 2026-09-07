#' @title Load names for all generate data functions
#' 

nEnrolled <- 47
nMax <- 200
id <- 1:nMax
skip <- 7
#start at 7 in 2026:
names(id) <- as.character(1:length(id))
names(id)[(skip+1):(skip+nEnrolled+1)] <- c('gp77','ms184','cmb9155', 'yf2938', 'ag11882', 'ag7214', 'dh3445', 'mk8428', 'mk10290', 'tjk8805', 'dk5403', 'tlk8908', 'cl8271', 'yl6594', 'jl17842', 'nm4392', 'jm12169', 'njp9611', 'cdp4029', 'bp2762', 'arr426', 'pss400', 'ys6951', 'ss21359', 'jls10116', 'ms16919', 'tfs6492', 'st5862', 'dt2354', 'nt1511', 'yw9300', 'nz945')
USERid <- id
USERid <<- USERid

idGrouped <-1:nMax
nAssigned <- nEnrolled+2
names(idGrouped) <- as.character(1:length(idGrouped))
names(idGrouped)[1:nAssigned] <- c('gp77','ms184', 'km4326', 'FP0',
 'FP1', 'FP2', 'FP3', 'FP4',
 'FP5', 'FP6', 'FP7', 'FP8',
  'gp77','ms184','cmb9155', 'yf2938', 'ag11882', 'ag7214', 'dh3445', 'mk8428', 'mk10290', 'tjk8805', 'dk5403', 'tlk8908', 'cl8271', 'yl6594', 'jl17842', 'nm4392', 'jm12169', 'njp9611', 'cdp4029', 'bp2762', 'arr426', 'pss400', 'ys6951', 'ss21359', 'jls10116', 'ms16919', 'tfs6492', 'st5862', 'dt2354', 'nt1511', 'yw9300', 'nz945')
idGrouped <<- idGrouped
