#' Lake volume function

#' @param intitial_level, changing initital lake level (gallons)
#' @param precip_data, changing daily precipitation data (gallons)
#' @param outflow of 10 gal/day
#' @param evap (evaporation) of 1 gal/day
#' @return lake_volume (changing volume of the lake) and total_inputs (inputs into the lake)

lake_func=function(initial_level, precip_data, outflow=10, evap=1) {
  lake_vol = (initial_level + precip_data) - (outflow + evap)
  total_change = (precip_data - (outflow + evap))
  return(list(lake_vol, total_change))
}