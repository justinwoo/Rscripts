#simple single-lens
#incident ray angle
alpha <- .1
#initial height of ray
height <- 0
#definition of ray matrix
matrix <- matrix(c(alpha,height),2,1)
#index of refraction
n <- 1.5
#distance of object from vertex of lens
dist <- 120
#power of lens
D <- 1/30
#definition of refraction matrix
R <- matrix(c(1,0,-D,1),2,2)
#definition of transfer matrix from object to lens
T01 <- matrix(c(1,dist,0,1),2,2)
#computation of final ray matrix
matrix <- R %*% T01 %*% matrix
#closing the ray
image <- matrix[2]/tan(abs(matrix[1]))
if(matrix[1]>0)
{
  print(image)
  print("is the image location to the left of the lens")
} else
{
  print(image)
  print("is the image location to the right of the lens")
}