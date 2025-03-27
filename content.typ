#import "summify.typ": *

#let lineare_regression = content-block(title: [Lineare Regression], color: red)[
  \
  \
  \
  Linearer Zusammenhang zwischen den Eingabevariablen x und der Ausgabevariable y wird modelliert.

  *Hypothesenfunktion*:\
  $h_theta(x) = theta_0 + theta_1 x_1 + theta_2 x_2 + dots + theta_n x_n$

  *Kostenfunktion (MSE)*:\
  $J(theta) = 1 / (2n) sum_(i=1)^n (h_theta (x^(\(i\))) - y^(\(i\)))^2$

  *Ziel*: \
  Finde Parameter $theta$ um J zu minimieren \
  *$min J(theta)$*

  *Multivariat*:\
  Mehrere Features $x_1, x_2, dots, x_n$

  *Polynom-Regression*:\
  $h_theta(x) = theta_0 + theta_1 x + theta_2 x^2 + theta_3 x^3 + dots$

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

#let logistische_regression = content-block(title: [Logistische Regression])[

  *Sigmoidfunktion*:\
  $g(z) = frac{1}{1 + e^{-z}}$

  *Hypothese*:\
  $h_theta(x) = g(theta^T x)$

  *Klassifikation*:\
  $h_theta(x) \ge 0.5 arrow$ Klasse 1\
  $h_theta(x) < 0.5 arrow$ Klasse 0

  *Entscheidungsgrenze*:\
  $theta_0 + theta_1 x_1 + theta_2 x_2 = 0$

  *Nicht-linearität* durch Features wie $x_1^2$, $x_1 x_2$, dots
]

#let regularisierung = content-block(title: [Regularisierung])[

  *Kostenfunktion mit L2-Regularisierung*:\
  $J(theta) = frac{1}{2n} sum (h_theta(x^{(i)}) - y^{(i)})^2 + lambda sum_{j=1}^d theta_j^2$

  *Effekt von $lambda$*:\
  • $lambda = 0$ → kein Penalty\
  • großes $lambda$ → starke Bestrafung, Underfitting

  *Bias-Term $theta_0$ wird oft nicht regularisiert*
]

#let svm_block = content-block(title: [Support Vector Machines])[

  *Ziel*:\
  $\min_{w,b} ( frac{1}{2} \|w\|^2 + C sum \xi_i )$

  *Nebenbedingungen*:\
  $y^{(i)} (w^T x^{(i)} + b) \ge 1 - \xi_i$ mit $\xi_i \ge 0$

  *C kontrolliert Trade-off*:\
  großes $C$ → weniger Fehler,\
  kleines $C$ → größerer Margin

  *Kernel-Trick*:\
  z. B. $K(x, x') = e^{-gamma \|x - x'\|^2}$ (RBF-Kernel)
]

#let neuronale_netzwerke = content-block(title: [Neuronale Netzwerke])[

  *Feedforward*:\
  $z^{(l+1)} = theta^{(l)} a^{(l)}$\
  $a^{(l+1)} = g(z^{(l+1)})$

  *Backpropagation*:\
  $delta^{(L)} = a^{(L)} - y$\
  $delta^{(l)} = (theta^{(l)})^T delta^{(l+1)} .* g'(z^{(l)})$

  *Gradientenabstieg*:\
  $theta^{(l)} := theta^{(l)} - alpha delta^{(l)} a^{(l-1)}$

  *Aktivierungsfunktionen*:\
  Sigmoid, Tanh, ReLU, Leaky ReLU, Softmax
]

#let convolutional_neuronale_netzwerke = content-block(title: [Convolutional Neuronal Networks])[ ]

#let modell_evaluation = content-block(title: [Modell Evaluation])[ ]
#let entscheidungsbaeume = content-block(title: [Entscheidungsbäume])[ ]
#let pca = content-block(title: [Pricipal Component Analysis (PCA)])[ ]
#let reinforcement_learning = content-block(title: [Reinforcement Learning])[ ]
