#' Preaggregated WorldPop data for spatialEpisim
#'
#' @param path The `path` argument passed to [system.file], which is the path
#'   underneath the package extdata folder to a binary file. See that function's
#'   documentation for `...` to better understand this function.
#'
#' @returns An absolute path to the file(s).
#' @export
#'
#' @examples
#' terra::rast(spatialEpisim.data_example("COD/COD.grd"))
#'
#' readxl::read_xlsx(spatialEpisim.data_example("shortlistseeddata.xlsx"))
spatialEpisim.data_example <- function(path = NULL) {
  if (is.null(path)) {
    dir(system.file("extdata", package = "spatialEpisim.data"))
  } else {
    system.file("extdata", path, package = "spatialEpisim.data", mustWork = TRUE)
  }
}
