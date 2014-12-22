\name{Electre3_SimpleThresholds}
\alias{Electre3_SimpleThresholds}
\title{ ELECTRE III using non affine form of the thresholds}
\description{ELECTRE III  method aims to answer the following question: considering a finite set of actions, A, evaluated on a coherent family of pseudo-criteria, F, how to make a partition of A in classes of  quivalence and provide a necessarily complete pre-order expressing the relative position of these classes? In the first phase, ELECTRE III method involves the construction of a fuzzy outranking relation.
In the second phase, an algorithm is used for making a ranking in a final partial pre-order, that combines two complete pre-orders.
}
\usage{
Electre3_SimpleThresholds(performanceMatrix,
alternatives,
criteria,
minmaxcriteria,
criteriaWeights,
IndifferenceThresholds,
PreferenceThresholds,
VetoThresholds,
mode_def)
}

\arguments{
  \item{performanceMatrix}{Matrix or data frame containing the performance table. Each row corresponds to an alternative, and each column to a criterion. Rows (resp. columns) must be named according to the IDs of the alternatives (resp. criteria).}
  \item{alternatives}{Vector containing names of alternatives, according to which the data should be filtered.}
  \item{criteria}{Vector containing names of criteria, according to which the data should be filtered.}
  \item{minmaxcriteria}{criteriaMinMax Vector containing the preference direction on each of the criteria. "min" (resp."max") indicates that the criterion has to be minimized (maximized).}
  \item{criteriaWeights}{Vector containing the weights of the criteria.}
  \item{IndifferenceThresholds}{Vector containing the indifference thresholds constraints defined for each criterion.}
  \item{PreferenceThresholds}{Vector containing the preference thresholds constraints defined for each criterion.}
  \item{VetoThresholds}{Vector containing the veto thresholds constraints defined for each criterion}
  \item{mode_def}{Vector containing the mode of definition which indicates the mode of calculation of the thresholds (direct (D), considers the worst of the two actions; inverse(I), considers the best of the two actions). If Null, "Direct" mode will be setting}  
}

\references{Roy B. : "The outranking approach and the foundations of ELECTRE methods", Theory and Decision 31, 1991, 49-73.}
\author{Michel Prombo <michel.prombo@statec.etat.lu>}

\examples{

# the performance table
performanceMatrix <- cbind(
							c(-14,129,-10,44,-14),
							c(90,100,50,90,100),
							c(0,0,0,0,0),
							c(40,0,10,5,20),
							c(100,0,100,20,40)
)

# Vector containing names of alternatives

alternatives <- c("Project1","Project2","Project3","Project4","Project5")

# Vector containing names of criteria

criteria <- c( "CR1","CR2","CR3","CR4","CR5")

#  vector indicating the direction of the criteria evaluation 

minmaxcriteria <- c("max","max","max","max","max")

# criteriaWeights vector

# thresholds vector

IndifferenceThresholds <- c(25,16,0,12,10)
PreferenceThresholds <- c(50,24,1,24,20)
VetoThresholds <- c(100,60,2,48,90)
criteriaWeights <- c(1,1,1,1,1)

# Vector containing the mode of definition which 
# indicates the mode of calculation of the thresholds.


# Testing

Electre3_SimpleThresholds(performanceMatrix,
							alternatives,
							criteria,
							minmaxcriteria,
							criteriaWeights,
							IndifferenceThresholds,
							PreferenceThresholds,
							VetoThresholds)
}
\keyword{ELECTRE methods}
\keyword{Outranking approaches}
\keyword{preference modelling, multicriteria analysis}
\keyword{pseudo-criterion}
\keyword{Discrimination thresholds}
