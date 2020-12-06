calculate_prob_cancer_pos <- function()
{
  "
  Calculate the value of P(C|+) with difference values in P(+|C). Return the calculating values.
  "
  position_vector <- 1
  prob_cancer <- 4/100
  prob_pos_nocancer <- 0.073
  prob_nocancer <- 96/100
  probs_cancer_pos <- c()
  for(prob_pos_cancer in seq(0,1,by=0.01))
  {
    probs_cancer_pos[position_vector] = (prob_pos_cancer*prob_cancer)/((prob_pos_cancer*prob_cancer)+(prob_pos_nocancer*prob_nocancer))
    position_vector <- position_vector+1
  }
  return(probs_cancer_pos)
}

plot_probs <- function(y_values)
{
  "
  Plot the P(C|+) with different P(+|C)
  "
  x_values <- seq(0,1,0.01)
  plot(x_values,y_values, type="l", ylab = "P(C|+)", xlab = "P(+|C)", main = "How does P(C|+) change,\n when we increase the P(+|C)?")
}
#Exercise A
prob_cancer <- 4/100
prob_pos_nocancer <- 0.073
prob_nocancer <- 96/100
prob_pos_cancer <- 3/4
prob_cancer_pos <- (prob_pos_cancer*prob_cancer)/((prob_pos_cancer*prob_cancer)+(prob_pos_nocancer*prob_nocancer))

print( "The probability of P(C|+) is: ")
print(prob_cancer_pos)

#Exercise B
probs <-calculate_prob_cancer_pos()
plot_probs(probs)
