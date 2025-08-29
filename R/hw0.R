#' @title Load names for all generate data functions
#' 

nEnrolled <- 46
nMax <- 200
id <- 1:nMax
skip <- 50
#start at 50 in 2025:
names(id) <- as.character(1:length(id))
names(id)[(skip+1):(skip+nEnrolled)] <- c('gp77','ms184', 'cb5176', 'cc8933', 'lgc3730', 'sc11498', 'xc3007', 'mcc816', 'jed9632', 'gcd2056', 'jue203', 'mje9832', 'jg8284', 'ph2551', 'ak12124', 'eok4905', 'jl14835', 'jl13491', 'jl15934', 'yl13031', 'mal9792', 'hl4631', 'em3163', 'akm9834', 'mam10050', 'cdp4029', 'jgp7855', 'ma8368', 'rs8422', 'as17698', 'rs8559', 'ct2507', 'rt1796', 'jw9148', 'cw4742', 'hw3779', 'kw3751', 'yw8969', 'dx2098', 'rx2151', 'yy5550', 'yy5500', 'tz2880', 'xz4231', 'nz2429', 'rz2982')

USERid <<- id

idGrouped <-1:nMax
nAssigned <- 48
names(idGrouped) <- as.character(1:length(idGrouped))
names(idGrouped)[1:nAssigned] <- c('gp77','ms184', 'FP1', 'FP2',
  'cb5176', 'cc8933', 'lgc3730', 'sc11498',
  'xc3007', 'mcc816', 'jed9632', 'gcd2056',
  'jue203', 'mje9832', 'jg8284', 'ph2551',
  'ak12124', 'eok4905', 'jl14835', 'jl13491',
  'jl15934', 'yl13031', 'mal9792', 'hl4631',
  'em3163', 'akm9834', 'mam10050', 'cdp4029',
  'jgp7855', 'ma8368', 'rs8422', 'as17698',
  'rs8559', 'ct2507', 'rt1796', 'jw9148',
  'cw4742', 'hw3779', 'kw3751', 'yw8969',
  'dx2098', 'rx2151', 'yy5550', 'yy5500',
  'tz2880', 'xz4231', 'nz2429', 'rz2982')

idGrouped <<- idGrouped
