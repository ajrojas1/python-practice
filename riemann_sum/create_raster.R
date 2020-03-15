# creator: arojas
# date: 03/15/2020
# file: create_raster.R
# description: creates sample raster dataset using example from gis.stackexchange 
# for use in riemann sum example

library(raster)

# https://gis.stackexchange.com/questions/23841/create-a-raster-with-georeferenced-information-in-r
sample = matrix(1:400, 20, 20)
sample_raster = raster(sample)
# Give it lat/lon coords for 36-37°E, 3-2°S 
extent(sample_raster) <- c(36,37,-3,-2)
projection(sample_raster) <- CRS("+proj=longlat +datum=WGS84")
plot(sample_raster)

writeRaster(sample_raster, "test_data.tif", format = "GTiff")
