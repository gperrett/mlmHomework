#' @title Load names for all generate data functions
#' 

nEnrolled <- 31
nMax <- 200
id <- 1:nMax
skip <- 7
#start at 7 in 2026:
names(id) <- as.character(1:length(id))
names(id)[skip:(skip+nEnrolled-1)] <- c('gp77','ms184','cmb9155', 'yf2938', 'ag11882', 'ag7214', 'dh3445', 'mk8428', 'mk10290', 'tjk8805', 'dk5403', 'tlk8908', 'cl8271', 'yl6594', 'jl17842', 'nm4392', 'jm12169', 'njp9611', 'bp2762', 'arr426', 'ys6951', 'ss21359', 'jls10116', 'ms16919', 'tfs6492', 'nt1511', 'yw9300', 'jl13491','kn2293','ottenj01','xc2440')
USERid <- id
USERid <<- USERid

idGrouped <-1:nMax
skip <- 20 #20 groups skipped
names(idGrouped) <- as.character(1:length(idGrouped))
names(idGrouped)[(4*skip+1):(4*skip+nEnrolled)] <- c(
  'yf2938', 'yw9300', #D: SocW
  'tfs6492', 'jl13491', #M A3SR
  'mk8428', 'ys6951', #D: Epi
  'arr426','yl6594', #D: Dev
  'jm12169', 'dh3445', #M A3SR
  'ag11882', 'njp9611', #D: CSS
  'nt1511', 'tlk8908',  #M: epi
  'bp2762',  'cmb9155', #D: Soc -u #D: TL
  'arr426','yl6594', #D: Dev
  'tjk8805', 'ag7214', #M: A3SR #M: A3SR -u
  'kn2293', 'xc2440', #D: Epi
  'dk5403', 'ottenj01', #M: A3SR  #M: PH
  'mk10290', 'cl8271', #D: Nurs
  'jl17842', 'ss21359', #M: A3SR #M: A3SR
  'nm4392', 'jls10116', #D: RS -u  #D: med
  'gp77','ms184','ms16919')   #ms16919 dropped
idGrouped <<- idGrouped
