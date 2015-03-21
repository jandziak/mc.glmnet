#' Multiple Core Multiple Model glmnet calculations
#'
#' Package mc.glmnet performs fit of L1 penalised model to the data. It is introduction 
#' to solution for Graphical Gaussion Models precission matrix. There had been used 
#' parallel computing in order to reduce time of computations. 
#'
#' For solving simple lasso problem, the number of predictors is usualy
#' reasonably small so the time of computations is not crutial. 
#' For Graphical Gaussian Models number of parameters to be estimated is
#' squared. 
#' 
#' The main function of package mc.glmnet is
#' \code{\link{mcmm.glmnet}} which allows to solve multiple Lasso problems 
#' using parallel computations. For large number of predictros solution presents 
#' significant better performance than usage of simple onee core computations.  
#'
#' We also provide function \code{\link{sm.glmnet}} that computes single model 
#' single L1 penalised model for generated inside data.  
#' 
#' Note that Windows users for propper evaluation of mcmm.glmnet and reduction 
#' in computation time, script available at http://www.stat.cmu.edu/~nmv/setup/mclapply.hack.R
#'
#' @docType package
#' @name mc.glmnet
#' @details Version: 0.1.1
#' @importFrom glmnet glmnet
#' @importFrom parallel mclapply
#' @author Jan Idziak
#' 
#' Maintainer: Jan Idziak \email{Jan.Idziak@@gmail.com}
#'
#' @examples
#' \dontrun{
#' sim.data <- data.simulation(n = 50, SNR = 1, K = 3, numb.vars = 50, max.dim = 3)
#' mlcc.bic(sim.data$X, numb.clusters = 1:5, numb.runs = 20)
#' mlcc.reps(sim.data$X, numb.clusters = 3, numb.runs = 20)}
NULL