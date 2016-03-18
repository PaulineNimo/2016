f <- function(x) {
  r <- sqrt(x[1]^2 + x[2]^2)
  10 * sin(r) / r
}
x <- seq(-10, 10, length.out=1000)
grid <- expand.grid(x=x, y=x)
head(grid, n = 3)
system.time({z <- apply(grid, 1, f)})

par(mfrow = c(1,1))
dim(z) <- c(length(x), length(x))
persp(x, x, z, theta=30, phi=30, expand=0.5, col='white', border=NA, shade=0.3, box=FALSE)

availablePackages <- available.packages()[,1]
install.packages(availablePackages)
