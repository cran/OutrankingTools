\name{Electre_tri}
\alias{Electre_tri}
\title{ELECTRE TRI Method}
\description{The Electre Tri is a multiple criteria decision aiding method, designed to deal with sorting problems. Electre Tri method has been developed by LAMSADE (Paris-Dauphine University, Paris, France).}
\usage{
Electre_tri(performanceMatrix,
				alternatives,
				profiles,
				profiles_names,
				criteria,
				minmaxcriteria,
				criteriaWeights,
				IndifferenceThresholds,
				PreferenceThresholds,
				VetoThresholds,
				lambda = NULL)
}
 
\arguments{
  \item{performanceMatrix}{Matrix or data frame containing the performance table. Each row corresponds to an alternative, and each column to a criterion. Rows (resp. columns) must be named according to the IDs of the alternatives (resp. criteria).}
  \item{alternatives}{Vector containing names of alternatives, according to which the data should be filtered.}
  \item{profiles}{Matrix containing, in each row, the lower profiles of the categories. The columns are named according to the criteria, and the rows are named according to the categories. The index of the row in the matrix corresponds to the rank of the category.}
  \item{profiles_names}{Vector containing profiles'names}
  \item{criteria}{Vector containing names of criteria, according to which the data should be filtered.}
  \item{minmaxcriteria}{criteriaMinMax Vector containing the preference direction on each of the criteria. "min" (resp."max") indicates that the criterion has to be minimized (maximized).}
  \item{criteriaWeights}{Vector containing the weights of the criteria.}
  \item{IndifferenceThresholds}{Vector containing the indifference thresholds constraints defined for each criterion.}
  \item{PreferenceThresholds}{Vector containing the preference thresholds constraints defined for each criterion.}
  \item{VetoThresholds}{Vector containing the veto thresholds constraints defined for each criterion}
  \item{lambda}{The lambda-cutting lambda- should be in the range 0.5 and 1.0) level indicates how many of the criteria have to be fulfilled in order to assign an alternative to a specific category. Default value=0.75}
}
 
\references{Mousseau V., Slowinski R., "Inferring an ELECTRE TRI Model from Assignment Examples", Journal of Global Optimization, vol. 12, 1998, 157-174.
Mousseau V., Figueira J., NAUX J.P, "Using assignment examples to infer weights for ELECTRE TRI method : Some experimental results", Universite de Paris Dauphine, cahier du Lamsade n 150, 1997,
Mousseau V., Slowinski R., Zielniewicz P. : "ELECTRE TRI 2.0a, User documentation", Universite de Paris-Dauphine, Document du LAMSADE no 111}
\author{Michel Prombo <michel.prombo@statec.etat.lu>}
 
\examples{

# the performance table

performanceMatrix <- cbind(
c(-120.0,-150.0,-100.0,-60,-30.0,-80,-45.0),
c(-284.0,-269.0,-413.0,-596,-1321.0,-734,-982.0),				
c(5.0,2.0,4.0,6,8.0,5,7.0),					
c(3.5,4.5,5.5,8,7.5,4,8.5),		
c(18.0,24.0,17.0,20,16.0,21,13.0)
)
# Vector containing names of alternatives

alternatives <- c("a1","a2","a3","a4","a5","a6","a7")

# Vector containing names of criteria

criteria <- c( "g1","g2","g3","g4","g5")
criteriaWeights <- c(0.25,0.45,0.10,0.12,0.08)

# vector indicating the direction of the criteria evaluation .

minmaxcriteria <- c("max","max","max","max","max")

# Matrix containing the profiles.

profiles <- cbind(c(-100,-50),c(-1000,-500),c(4,7),c(4,7),c(15,20))

#  vector defining profiles' names

profiles_names <-c("b1","b2")

# thresholds vector
IndifferenceThresholds <- c(15,80,1,0.5,1)
PreferenceThresholds <- c(40,350,3,3.5,5)
VetoThresholds <- c(100,850,5,4.5,8)

# Testing

Electre_tri(performanceMatrix,
			alternatives,
			profiles,
			profiles_names,
			criteria,
			minmaxcriteria,
			criteriaWeights,
			IndifferenceThresholds,
			PreferenceThresholds,
			VetoThresholds,
			lambda=NULL)
}

\keyword{ELECTRE methods}
\keyword{Sorting problem}
\keyword{Aggregation/disaggregation approaches}
\keyword{Multi-criteria decision aiding}

