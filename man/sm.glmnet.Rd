% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/sm.glmnet.R
\name{sm.glmnet}
\alias{sm.glmnet}
\title{Single Model glmnet model fitting}
\usage{
sm.glmnet(FUN, ..., family = "binomial")
}
\arguments{
\item{FUN}{a function of appropriate form to generate data to fit the model}

\item{...}{a parameters to be passed in function}

\item{family}{a parameter that controls the type of model to be fitted.}
}
\value{
Fitted glmnet model for generated data
}
\description{
Performs fitting simple L1 penalized model of choosen type for generated data.
}

