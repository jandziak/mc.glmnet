#' Multiple Core Multiple Model glmnet models fitting
#'
#' Performs fitting simple L1 penalized models of choosen type foor generated data. 
#' Data set with n observations and p predictors is constructed.
#' Models are fitted for each p-1 predictors using multi core lapply function.
#'
#' @param FUN a function of appropriate form to generate data to fit the model
#' @param ... a parameters to be passed in function
#' @param family a parameter that controls the type of model to be fitted. 
#' @export
#' @return Fitted glmnet models for generated data
mcmm.glmnet <- function(FUN, ..., family = "binomial"){
   data <- FUN(...)
   modele <- mclapply(1:ncol(data$X), function(i) glmnet(data$X[, -i], data$Y, family = "binomial", alpha = 1))
   return(modele)
} 
