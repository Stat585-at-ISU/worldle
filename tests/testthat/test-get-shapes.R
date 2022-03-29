

#Function should return an error if the country's shapefiles do not exist at the specified level
#Function should return a data frame with shape files similar to austria
#modify the expectations using a different example


urls <- c("http://thisisnotagoodurl/no/notatall.us",
          "https://geodata.ucdavis.edu/gadm/gadm4.0/shp/gadm40_BHS_shp.zip")

test_that("get_shapes should error if url is not a valid url or level is not an integer", {
  expect_error(get_shapes(urls[1]))
  expect_error(get_shapes(urls[2], level = -3.5))
})
