dims = 2
k = 3

set.seed(42)

n = 150
xs = matrix(rnorm(n*dims, 10), n, dims)
clusters = sample(1:k, n, replace=TRUE)
centroids = matrix(rnorm(k*dims, mean=1, sd=10), k, dims)
clustered_x = cbind(xs + centroids[clusters], clusters)
if (dim(clustered_x)==2){
    colnames(clustered_x) = c("x1", "x2", "cluster")
}
head(clustered_x)

plot(clustered_x, col=clustered_x[,3], pch=19)
