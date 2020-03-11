n = 150*2
k = 3

set.seed(42)
x = matrix(rnorm(n, 10), 150, 2)
clusters = sample(1:3, 150, replace=TRUE)
centroids = matrix(rnorm(3*2, mean=1, sd=10), 3, 2)
clustered_x = x + centroids[clusters]
plot(clustered_x, col=clusters)
