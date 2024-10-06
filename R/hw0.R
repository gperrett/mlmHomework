#' @title Load names for all generate data functions
#' 

nEnrolled <- 62
nMax <- 200
id <- 1:nMax
names(id) <- as.character(1:length(id))
names(id)[1:nEnrolled] <- c("gp77", "ms184", "zm2518", "msb7677", "uuc1", "sc5466", "ac11007",
                      "sd5718", "yd2837", "emd14", "dld382", "sd5720", "kf1678", "mh7262",
                      "jeh596", "xh2729", "yh2741", "jh172", "rbj2158", "yk3008", "sk10896",
                      "yl7469", "alt10", "pl1900", "jl15426", "xl4820", "zl5566", "yl8844",
                      "rl5309", "vl2414", "dl5334", "ebl9629", "sl10865", "yl11897",
                      "ll1950", "cl6623", "sm11370", "ap8617", "bsp8894", "ap6355",
                      "cp4101", "xq661", "zq2253", "kr3235", "jds866", "ss17504", "rlt9272",
                      "at6099", "xt595", "vt2289", "cv985", "zw4183", "wy2391", "tz2569",
                      "xz2661", "hz3533", "sz4548", "tz2683","bds9726","tt1014","nyimbs01","lel8218")
id <<- id

idGrouped <-1:nMax
nAssigned <- 72
names(idGrouped) <- as.character(1:length(idGrouped))
names(idGrouped)[1:nAssigned] <- c("gp77", "ms184", "zm2518", "ks6017",
"rbj2158","alt10","cl6623","P8",
"ap6355","sc5466","ebl9629","P12",
"sd5720","yl8844","ap8617","at6099",
"bsp8894","yk3008","sm11370","P20",
"cp4101","sd5718","xz2661","zq2253",
"jeh596","vl2414","ac11007","vt2289",
"msb7677","tt1014","lel8218","P32",
"xq661","xt595","xl4820","M36",
"jl15426","tz2683","sl10865","zl5566",
"ss17504","xh2729","wy2391","yd2837",
"cv985","rl5309","nyimbs01", "kr3235",
"yl11897","yh2741","dl5334","M52",
"pl1900","zw4183","sz4548","M56",
"bds9726","dld382","uuc1","yl7469",
"hz3533","jh172","kf1678","M64",
"emd14","mh7262","sk10896","ll1950",
"jds866","rlt9272","tz2569","M72")

idGrouped <<- idGrouped
