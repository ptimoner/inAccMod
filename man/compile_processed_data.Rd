% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compile_processed_data.R
\name{compile_processed_data}
\alias{compile_processed_data}
\title{Compile Input Layers}
\usage{
compile_processed_data(mainPath, location, mostRecent = TRUE)
}
\arguments{
\item{mainPath}{character; the parent directory of the location folder}

\item{location}{character; the location folder name}

\item{mostRecent}{logical; should the most recent 'processed' input be selected? If FALSE and if there are multiple
available 'processed' inputs, the user is interactively asked to select the 'processed' input based on file creation time.}
}
\description{
Compiles the available processed layers and copy them to a new folder called zToAccessMod to facilitate the further import into AccessMod
}
\examples{
# Replace workDir with the actual path to your working directory
\dontrun{
mainPath <- "workDir"
initiate_project(mainPath)}

# Replace myLocation with the location name you are working on (workDir subfolder)
\dontrun{
location <- "myLocation"
download_boundaries(mainPath, location, adminLevel = 1, type = "gbOpen", alwaysDownload = TRUE)
set_projection(mainPath, location, mostRecent = TRUE, alwaysSet = TRUE, bestCRS = TRUE)
download_landcover(mainPath, location, alwaysDownload = TRUE, mostRecent = TRUE)
download_population(mainPath, location, alwaysDownload = TRUE)
download_dem(mainPath, location, alwaysDownload = TRUE, mostRecent = TRUE)
download_osm(mainPath, location, type = "roads", alwaysDownload = TRUE, mostRecent = NULL, defaultClasses = TRUE)
download_osm(mainPath, location, type = "waterLines", alwaysDownload = TRUE, mostRecent = NULL, defaultClasses = TRUE)
download_osm(mainPath, location, type = "waterPolygons", alwaysDownload = TRUE, mostRecent = NULL, defaultClasses = TRUE)
process_inputs(mainPath, location, selectedInputs = "All", mostRecent = TRUE, alwaysProcess = TRUE, defaultMethods = TRUE, changeRes = FALSE, popCorrection = TRUE, gridRes = 3000)
compile_processed_data(mainPath, location, mostRecent = TRUE)}
}
