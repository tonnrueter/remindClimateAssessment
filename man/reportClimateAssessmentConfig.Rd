% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reportClimateAssessmentConfig.R
\name{reportClimateAssessmentConfig}
\alias{reportClimateAssessmentConfig}
\title{Report climate assessment configuration}
\usage{
reportClimateAssessmentConfig(cfg)
}
\arguments{
\item{cfg}{Path to default.cfg file}
}
\value{
A string detailing the configuration settings.
}
\description{
Returns a string represenatation of a climate assessment configuration
}
\examples{
\dontrun{
cfg <- climateAssessmentConfig("<outputDir>", "iteration")
report <- reportClimateAssessmentConfig(cfg)
cat(report)
}

}
