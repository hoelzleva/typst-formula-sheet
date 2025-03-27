#import "summify.typ": *

#let lineare_regression = content-block(title: [Lineare Regression])[

  *Hypothese*:\
  $h_theta(x) = theta_0 + theta_1 x_1 + ... + theta_n x_n$

  *Kostenfunktion (MSE)*:\
  $J(theta) = frac{1}{2n} sum_{i=1}^n (h_theta(x^{(i)}) - y^{(i)})^2$

  *Ziel*: $min_theta J(theta)$

  *Multivariat*:\
  Mehrere Features $x_1, x_2, ..., x_n$

  *Polynom-Regression*:\
  $h_theta(x) = theta_0 + theta_1 x + theta_2 x^2 + theta_3 x^3 + ...$

]

#let gradient_descent = content-block(title: [Gradient Descent])[

  *Update-Regel*:\
  $theta_j := theta_j - alpha frac{partial}{partial theta_j} J(theta)$

  *Für lineare Regression*:\
  $theta_j := theta_j + alpha frac{1}{n} sum_{i=1}^n (y^{(i)} - h_theta(x^{(i)})) dot x_j^{(i)}$

  *Lernrate* $alpha$:\
  Zu groß → Divergenz,\
  zu klein → langsame Konvergenz

]
