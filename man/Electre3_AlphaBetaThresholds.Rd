\name{Electre3_AlphaBetaThresholds}
\alias{Electre3_AlphaBetaThresholds}
\title{ ELECTRE III using affine function form of the thresholds}
\description{ELECTRE III  method aims to answer the following question: considering a finite set of actions, A, evaluated on a coherent family of pseudo-criteria, F, how to make a partition of A in classes of  quivalence and provide a necessarily complete pre-order expressing the relative position of these classes? In the first phase, ELECTRE III method involves the construction of a fuzzy outranking relation.
In the second phase, an algorithm is used for making a ranking in a final partial pre-order, that combines two complete pre-orders.
}
\usage{
Electre3_AlphaBetaThresholds(performanceMatrix,
alternatives,
criteria,
minmaxcriteria,
criteriaWeights,
alpha_q,
beta_q,
alpha_p,
beta_p,
alpha_v,
beta_v,
mode_def)
}

\arguments{
  \item{performanceMatrix}{Matrix or data frame containing the performance table. Each row corresponds to an alternative, and each column to a criterion. Rows (resp. columns) must be named according to the IDs of the alternatives (resp. criteria).}
  \item{alternatives}{Vector containing names of alternatives, according to which the data should be filtered.}
  \item{criteria}{Vector containing names of criteria, according to which the data should be filtered.}
  \item{minmaxcriteria}{criteriaMinMax Vector containing the preference direction on each of the criteria. "min" (resp."max") indicates that the criterion has to be minimized (maximized).}
  \item{criteriaWeights}{Vector containing the weights of the criteria.}
  \item{alpha_q}{Vector containing  the coefficients alpha when indifference threshold is as affine function of the performance.}
  \item{beta_q}{Vector containing coefficients beta when indifference threshold is as affine function of the performance.}
  \item{alpha_p}{Vector containing coefficients beta when preference threshold is as affine function of the performance.}
  \item{beta_p}{Vector containing coefficients beta when preference threshold is as affine function of the performance.}
  \item{alpha_v}{Vector containing coefficients beta when veto threshold is as affine function of the performance.}
  \item{beta_v}{Vector containing coefficients beta when veto threshold is as affine function of the performance.}
  \item{mode_def}{Vector containing the mode of definition which indicates the mode of calculation of the thresholds (direct (D), considers the worst of the two actions; inverse(I), considers the best of the two actions). If Null, "Direct" mode will be setting}
}

\references{Roy B. : "The outranking approach and the foundations of ELECTRE methods", Theory and Decision 31, 1991, 49-73.}

\author{Michel Prombo <michel.prombo@statec.etat.lu>}

\examples{

## Illustrative example used  to present the ELECTRE III-IV software in the French version. 
## The objective: make the ranking of 10 French cars that were evaluated on 7 criteria
##(VALLE E, D. AND ZIELNIEWICZ, P. (1994a). 
## Document du LAMSADE 85, Universite Paris-Dauphine,Paris.)

## the performance table

performanceMatrix <- cbind(
c(103000,101300,156400,267400,49900,103600,103000,170100,279700,405000),
c(171.3,205.3,221.7,230.7,122.6,205.1,178.0,226.0,233.8,265.0),
c(7.65,7.90,7.90,10.50,8.30,8.20,7.20,9.10,10.90,10.30),
c(352,203,391,419,120,265,419,419,359,265),
c(11.6,8.4,8.4,8.6,23.7,8.1,11.4,8.1,7.8,6.0), 	
c(88.0,78.3,81.5,64.7,74.1,81.7,77.6,74.7,75.5,74.7),
c(69.7,73.4,69.0,65.6,76.4,73.6,66.2,71.7,70.9,72.0))

# Vector containing names of alternatives

alternatives<-c("CBX16","P205G","P405M","P605S","R4GTL","RCLIO","R21TS","R21TU","R25BA","ALPIN")

# Vector containing names of criteria

criteria <-c("Prix","Vmax","C120","Coff","Acce","Frei","Brui")
#  vector indicating the direction of the criteria evaluation .
minmaxcriteria <-c("min","max","min","max","min","min","min")

# criteriaWeights vector
criteriaWeights <- c(0.3,0.1,0.3,0.2,0.1,0.2,0.1)

# thresholds vector
alpha_q <- c(0.08,0.02,0,0,0.1,0,0)
beta_q <- c(-2000,0,1,100,-0.5,0,3)
alpha_p <- c(0.13,0.05,0,0,0.2,0,0)
beta_p <- c(-3000,0,2,200,-1,5,5)
alpha_v <- c(0.9,NA,0,NA,0.5,0,0)
beta_v <- c(50000,NA,4,NA,3,15,15)

# Vector containing the mode of definition which 
# indicates the mode of calculation of the thresholds.
mode_def <- c("I","D","D","D","D","D","D")

# Testing

Electre3_AlphaBetaThresholds(performanceMatrix,
								alternatives,
								criteria,
								minmaxcriteria,
								criteriaWeights,
								alpha_q,
								beta_q,
								alpha_p,
								beta_p,
								alpha_v,
								beta_v,
								mode_def)

}
 
\keyword{ELECTRE methods}
\keyword{Outranking approaches}
\keyword{preference modelling, multicriteria analysis}
\keyword{pseudo-criterion}
\keyword{Discrimination thresholds}
