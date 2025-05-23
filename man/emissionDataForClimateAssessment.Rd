% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emissionDataForClimateAssessment.R
\name{emissionDataForClimateAssessment}
\alias{emissionDataForClimateAssessment}
\title{emissionDataForClimateAssessment}
\usage{
emissionDataForClimateAssessment(
  qf,
  scenario,
  mapping = "AR6",
  variablesFile = NULL,
  logFile = NULL
)
}
\arguments{
\item{qf}{\code{quitte} data frame containing the emission data}

\item{scenario}{Name of the scenario}

\item{mapping}{Name of the mapping file from the \code{piamInterfaces} library, must be 'AR6', 'climateassessment',
'NGFS_AR6' or 'AR6_MAgPIE'. Defaults to 'AR6'}

\item{variablesFile}{Path to the yaml file containing the variables needed for climate-assessment. If no file path
is provided, the function gets the yaml file from the piamInterfaces package}

\item{logFile}{Path to the log file. Default is "output/missing.log"}
}
\value{
\code{quitte} data frame with the REMIND emission data reshaped for climate assessment
}
\description{
Converts remind emission data from long to wide format suitable for climate assessment. Only considers regions "GLO"
and "World" and extracts only the variables needed for climate assessment. Per default these are provided from the
AR6 mapping in the piamInterfaces package. The resulting data frame has one column for each year and one row for
each variable. For more information visit https://pyam-iamc.readthedocs.io/en/stable/data.html
}
\examples{
\dontrun{
# Generates REMIND emission report, extracts relevant variables and reshapes. Note: This funtion
can be used in a tidyverse pipeline.
emissionDataForClimateAssessment(
  remind2::reportEmi(fulldata.gdx),
  scenarioName = "SSP2EU-NPi-ar6",
  climateAssessmentYaml = file.path(
    system.file(package = "piamInterfaces"), "iiasaTemplates", "climate_assessment_variables.yaml"
  )
  logFile = "output/missing.log"
)
}
}
\author{
Tonn Rüter
}
