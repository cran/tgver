% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/explore_sf.R
\name{explore_sf}
\alias{explore_sf}
\title{Explore an sf R object using TGVE npm package.}
\usage{
explore_sf(sf = NULL, background = FALSE)
}
\arguments{
\item{sf}{a valid sf object that can be converted to geojson}

\item{background}{Boolean to decide whether plumber
should run in the background}
}
\value{
depending on `background` either a or not
blocking `plumber::pr` object is started or returned. In the case of a
`backgruond` FALSE value a message is displayed with object details.
}
\description{
Explore an sf R object using TGVE npm package.
}
\examples{
{
gj = c(
'[
      {"type":"Point","coordinates":[0,0]},
      {"type":"LineString","coordinates":[[-1,-1],[1,1]]},
        {
      "type": "FeatureCollection",
      "features": [
      {
        "type": "Feature",
        "properties": {"id":1},
        "geometry": {"type": "Point", "coordinates": [100.0, 0.0]}
      }
    ]
  }
    ]'
)
sf = geojsonsf::geojson_sf(gj)
ps = tgver::explore_sf(sf, background = TRUE)
ps$kill()
}
}
