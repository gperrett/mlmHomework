#' @title Load names for all generate data functions
#' 

nEnrolled <- 47
nMax <- 200
id <- 1:nMax
skip <- 50
#start at 50 in 2025:
names(id) <- as.character(1:length(id))
names(id)[(skip+1):(skip+nEnrolled+1)] <- c('gp77','ms184', 'cb5176', 'cc8933', 'lgc3730', 'sc11498', 'xc3007', 'mcc816', 'jed9632', 'gcd2056', 'jue203', 'mje9832', 'jg8284', 'ph2551', 'ak12124', 'eok4905', 'jl14835', 'jl13491', 'jl15934', 'yl13031', 'mal9792', 'hl4631', 'em3163', 'akm9834', 'mam10050', 'cdp4029', 'jgp7855', 'ma8368', 'rs8422', 'as17698', 'rs8559', 'ct2507', 'rt1796', 'jw9148', 'cw4742', 'hw3779', 'kw3751', 'yw8969', 'dx2098', 'rx2151', 'yy5550', 'yy5500', 'tz2880', 'xz4231', 'nz2429', 'rz2982','sj4386','km4326')
USERid <- id
USERid <<- USERid

idGrouped <-1:nMax
nAssigned <- nEnrolled+2
names(idGrouped) <- as.character(1:length(idGrouped))
names(idGrouped)[1:nAssigned] <- c('gp77','ms184', 'km4326', 'FP0',
 'FP1', 'FP2', 'FP3', 'FP4',
 'xc3007', 'sj4386', 'xz4231', 'dt2354',
 'eok4905', 'akm9834', 'mam10050', 'ma8368',
 'ak12124', 'mje9832', 'jg8284', 'rx2151',
 'hw3779', 'sc11498', 'cw4742', 'ct2507',
 'gcd2056', 'hl4631', 'em3163', 'rz2982',
 'jgp7855', 'jue203', 'as17698', 'dx2098',
 'yl13031', 'rs8422', 'ph2551', 'rs8559',
 'jl15934', 'yw8969', 'nz2429', 'kw3751',
 'mal9792', 'lgc3730', 'mcc816', 'cb5176',
 'yy5550', 'tz2880', 'cc8933', 'rt1796',
 'yy5500')
idGrouped <<- idGrouped
