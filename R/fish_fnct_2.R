fish_fnct = function(my_data) { 
  most_common_fish <- names(which.max(summary(my_data)))
  rarest_fish <- names(which.min(summary(my_data)))
  total_num <- sum(summary(my_data))
  final_list <- c(most_common_fish,rarest_fish,total_num)
  
  return(final_list)
}