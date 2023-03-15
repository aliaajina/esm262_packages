#' Lake volume function
#' This function computes the volume of 4 lakes based on four different precipitation values in the provided dataset.
#' You can use this equation for any lake by providing it with the initial lake level, precipitation data, outflow, and evaportion rates.
#' @author Alia Ajina & Sophia Leiker
#' @param intitial_level, changing initital lake level (gallons)
#' @param precip_data, changing daily precipitation data (gallons)
#' @param outflow of 10 gal/day, default = 10
#' @param evap (evaporation) of 1 gal/day, default = 1
#' @return lake_volume (changing volume of the lake) and total_inputs (inputs into the lake)

lake_func=function(initial_level, precip_data, outflow=10, evap=1) {
  lake_vol = (initial_level + precip_data) - (outflow + evap)
  total_change = (precip_data - (outflow + evap))
  return(list(lake_vol, total_change))
}

