#cluster analysis 
# standard clarksevans index 

library(sp)
library(spdep)

str(

clark_evans <- function(points_sp) {
  n <- length(points_sp)
  centroid <- c(mean(coordinates(points_sp)[, 1]), mean(coordinates(points_sp)[, 2]))
  
  # Calculate distances between each point and the centroid
  distances <- sqrt((centroid[1] - coordinates(points_sp)[, 1])^2 + 
                      (centroid[2] - coordinates(points_sp)[, 2])^2)
  
  # Calculate the sum of distances
  sum_dist <- sum(distances)
  
  # Calculate the Clark-Evans index
  clark_evans_index <- sum_dist / (n * sum_dist)
  
  return(clark_evans_index)
}

# Convert X and Y columns to a matrix
coordinates_obs <- cbind(Obs2$X, Obs2$Y)

# Call the function to calculate the Clark-Evans index
clark_evans_index <- clark_evans(coordinates_obs)
print(clark_evans_index)




##############clark evans NNI

library(spatstat)

# Define the window for the point pattern
win <- owin(c(127.115, 127.126), c(37.5175, 37.525))

# Convert X and Y columns to a point pattern object
points_pattern <- ppp(Obs2$X, Obs2$Y, window = win)

# Calculate observed mean nearest neighbor distance
obs_mean_nnd <- mean(nndist(points_pattern))

# Generate random points within the same window
random_points <- runifpoint(n = nrow(Obs2), win = win)

# Calculate nearest neighbor distances for random points
random_nn_dist <- nndist(random_points)

# Calculate expected mean nearest neighbor distance
exp_mean_nnd <- mean(random_nn_dist)

# Calculate Clark-Evans Nearest Neighbor Statistic
clark_evans_nns <- obs_mean_nnd / exp_mean_nnd

# Print the result
print(paste("Clark-Evans Nearest Neighbor Statistic:", round(clark_evans_nns, 3)))


#NNI (지영언니논문)
library(spatstat)

# Define the window for the point pattern
win <- owin(c(127.115, 127.126), c(37.5175, 37.525))

# Convert X and Y columns to a point pattern object
points_pattern <- ppp(Obs2$X, Obs2$Y, window = win)

# Calculate nearest neighbor distances
nn_dist <- nndist(points_pattern)

# Calculate observed mean nearest neighbor distance
obs_mean_nnd <- mean(nn_dist)

# Generate random points within the same window
random_points <- runifpoint(n = nrow(Obs2), win = win)

# Calculate nearest neighbor distances for random points
random_nn_dist <- nndist(random_points)

# Calculate expected mean nearest neighbor distance
exp_mean_nnd <- mean(random_nn_dist)

# Calculate Nearest Neighbor Index (NNI)
nni <- obs_mean_nnd / exp_mean_nnd

# Calculate standard distance
std_dist <- sqrt(obs_mean_nnd / (2 * pi))

# Calculate Z-score
z_score <- (obs_mean_nnd - exp_mean_nnd) / (sd(random_nn_dist) / sqrt(length(random_nn_dist)))

# Print the results
print(paste("Nearest Neighbor Index (NNI):", round(nni, 3)))
print(paste("Standard Distance:", round(std_dist, 3)))
print(paste("Z-Score:", round(z_score, 3)))



