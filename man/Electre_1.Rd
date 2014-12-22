\name{Electre_1}
\alias{Electre_1}
\title{Electre 1 : Method used to solve multiple criteria decision making}
\description{The acronym ELECTRE stands for: \'ELimination Et Choix Traduisant la R\'Ealit\'e (ELimination and Choice Expressing REality).ELECTRE I method is then designed to rank reliability design scheme in order of decision maker preference.This method is based on the concept of concordance and discordance.}
\usage{
Electre_1(performanceMatrix, 
			alternatives, 
			criteria, 
			criteriaWeights, 
			minmaxcriteria, 
			concordance_threshold = 1, 
			discordance_threshold = 0)
}

\arguments{
  \item{performanceMatrix}{Matrix or data frame containing the performance table. Each row corresponds to an alternative, and each column to a criterion. Rows (resp. columns) must be named according to the IDs of the alternatives (resp. criteria).}
  \item{alternatives}{Vector containing names of alternatives, according to which the data should be filtered.}
  \item{criteria}{Vector containing names of criteria, according to which the data should be filtered.}
  \item{criteriaWeights}{ector containing the weights of the criteria.}
  \item{minmaxcriteria}{criteriaMinMax Vector containing the preference direction on each of the criteria. "min" (resp."max") indicates that the criterion has to be minimized (maximized).}
  \item{concordance_threshold}{parameter defining concordance threshold . The default value is 1. The user can set a new value between 0 and 1}
  \item{discordance_threshold}{parameter defining discordance threshold . The default value is 0. The user can set a new value between 0 and 1.}
}

\value{
	The function returns a list structured as follows : 
	\item{"Performance Matrix"}{A matrix containing the performance table. Each row corresponds to an alternative, and each column to a criterion}
	\item{"Concordance Matrix"}{Concordance matrix is one of two working relations (concordance and discordance) which are subsequently used to construct the final dominance relation.For an outranking aSb to be validated, a sufficient majority of criteria should be in favor of this assertion.}
	\item{"Discordance Matrix"}{Discordance matrix is one of two working relations (concordance and discordance) which are subsequently used to construct the final dominance relation. The concept of discordance is complementary to the one of (concordance and represents the discomfort experienced in the choosing of alternative a above alternative b}
}

\references{Roy B. : "The outranking approach and the foundations of ELECTRE methods", Theory and Decision 31, 1991, 49-73.}

\author{Michel Prombo <michel.prombo@statec.etat.lu>}

\examples{

## This illustrative example has been used in to present 
##the ELECTRE III-IV software in the French version.
## The objective is to make the ranking of 10 French cars that were evaluated on 7 criteria 
##(VALLE E, D. AND ZIELNIEWICZ, P. (1994a). 
## Document du LAMSADE 85, Universite Paris-Dauphine,Paris.)

## The performance table

performanceMatrix <- cbind(
c(103000,101300,156400,267400,49900,103600,103000,170100,279700,405000),
c(171.3,205.3,221.7,230.7,122.6,205.1,178.0,226.0,233.8,265.0),
c(7.65,7.90,7.90,10.50,8.30,8.20,7.20,9.10,10.90,10.30),
c(352,203,391,419,120,265,419,419,359,265),
c(11.6,8.4,8.4,8.6,23.7,8.1,11.4,8.1,7.8,6.0), 	
c(88.0,78.3,81.5,64.7,74.1,81.7,77.6,74.7,75.5,74.7),
c(69.7,73.4,69.0,65.6,76.4,73.6,66.2,71.7,70.9,72.0))

## Vector containing names of alternatives

alternatives <-c("CBX16","P205G","P405M","P605S","R4GTL","RCLIO","R21TS","R21TU","R25BA","ALPIN")

## Vector containing names of criteria

criteria <-c("Prix","Vmax","C120","Coff","Acce","Frei","Brui")
##  vector indicating the direction of the criteria evaluation .
minmaxcriteria <-c("min","max","min","max","min","min","min")

## criteriaWeights vector
criteriaWeights <- c(0.3,0.1,0.3,0.2,0.1,0.2,0.1)

Electre_1(performanceMatrix,
alternatives,
criteria,
criteriaWeights,
minmaxcriteria,
concordance_threshold=0.8,discordance_threshold=0.1)
}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
