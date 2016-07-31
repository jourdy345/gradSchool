mc <- function(m) {
	X2 <- rbinom(m,8,0.25)
	X3 <- rbinom(m,8,0.375)
	X4 <- rbinom(m,8,0.25)
	X5 <- rbinom(m,8,0.0625)
	mean(X2+2*X3+3*X4+4*X5 >= 24)
}

mean(sapply(1:200,function(i,...) mc(100000)))