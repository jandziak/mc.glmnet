#' Single Model glmnet model fitting
#'
#' Performs fitting simple L1 penalized model of choosen type for generated data.
#'
#' @param FUN a function of appropriate form to generate data to fit the model
#' @param ... a parameters to be passed in function
#' @param family a parameter that controls the type of model to be fitted. 
#' @export
#' @return Fitted glmnet model for generated data
sm.glmnet  <- function(FUN, ..., family = "binomial"){
   data <- FUN(...)
   model <- glmnet(data$X, data$Y, family = family, alpha = 1)
   return(model)
}