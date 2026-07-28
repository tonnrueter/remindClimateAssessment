#' getMagiccVersion
#'
#' Obtains the MAGICC version by querying the supplied binary with `--version`.
#' Fails hard with a descriptive error if the version cannot be established.
#'
#' @md
#' @param magiccBin Path to the MAGICC binary to query
#' @return Trimmed, single-line MAGICC version string
#'
#' @author Tonn Rüter
#' @export
getMagiccVersion <- function(magiccBin) {
  # Obtain magicc version from the supplied binary
  magiccVersion <- system2(magiccBin, "--version", stdout = TRUE, stderr = TRUE)
  if (!is.null(attr(magiccVersion, "status"))) {
    stop("MAGICC binary exited non-zero when queried for --version")
  }
  if (length(magiccVersion) != 1 || !nzchar(trimws(magiccVersion))) {
    stop("expected a single non-empty MAGICC version line, got: ",
         paste(deparse(magiccVersion), collapse = ""))
  }
  return(trimws(magiccVersion))
}
