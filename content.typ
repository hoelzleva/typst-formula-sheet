#import "summify.typ": *

#let lineare_regression = content-block(title: [Lineare Regression], color: red)[
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

#let gradient_descent = content-block(title: [Gradient Descent], color: green)[

  *Update-Regel*:\
  $theta_j := theta_j - alpha space partial / (partial theta_j) J(theta)$

  *Für lineare Regression*:\
  $theta_j := theta_j + alpha 1 / n sum_(i=1)^n (y^(\(i\)) - h_theta (x^(\(i\)))) dot x_j^(\(i\))$

  *Lernrate $alpha$*:\
  Zu groß → Divergenz,\
  zu klein → langsame Konvergenz

]

#let logistische_regression = content-block(title: [Logistische Regression], color: blue)[

  *Sigmoidfunktion*:\
  $g(z) = 1 / (1+ e^(-z))$

  *Hypothese*:\
  $h_theta (x) = g(theta^T x) = 1 / (1+ e^(- theta^T x))$

  *Klassifikation*:\
  $h_theta (x) gt.eq 0.5 arrow$ Klasse 1\
  $h_theta (x) lt 0.5 arrow$ Klasse 0

  *Entscheidungsgrenze*:\
  $theta_0 + theta_1 x_1 + theta_2 x_2 = 0$

  *Nicht-linearität*: \
  $h_theta (x) = g(theta_0 + theta_1 x_1 + theta_2 x_2 + theta_3 x_1^2 + theta_4 x_2^2 + theta_5 x_1 x_2 + dots)$
]

#let regularisierung = content-block(title: [Regularisierung], color: navy)[

  *Kostenfunktion mit L2-Regularisierung*:\
  $J(theta) = 1 / (2n) sum (h_theta (x^((i))) - y^(\(i\)))^2 + lambda sum_(j=1)^d theta_j^2$

  *Effekt von $lambda$*:\
  - $lambda = 0$ → kein Penalty\
  - großes $lambda$ → starke Bestrafung, Underfitting

  *Bias-Term $theta_0$ wird oft nicht regularisiert*
]

#let svm_block = content-block(title: [Support Vector Machines], color: aqua)[

  *Ziel*:\
  $\min_{w,b} ( 1}{2} \|w\|^2 + C sum \xi_i )$

  *Nebenbedingungen*:\
  $y^{(i)} (w^T x^{(i)} + b) \ge 1 - \xi_i$ mit $\xi_i \ge 0$

  *C kontrolliert Trade-off*:\
  großes $C$ → weniger Fehler,\
  kleines $C$ → größerer Margin

  *Kernel-Trick*:\
  z. B. $K(x, x') = e^{-gamma \|x - x'\|^2}$ (RBF-Kernel)
]

#let neuronale_netzwerke = content-block(title: [Neuronale Netzwerke], color: purple)[

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

#let convolutional_neuronale_netzwerke = content-block(title: [Convolutional Neuronal Networks], color: olive)[
  *Hauptidee*:\
  Extraktion lokaler Merkmale durch Faltungsoperationen.

  *Faltungsschicht (Convolution Layer)*:\
  wendet Filter (Kerne) an:\
  $z = W ast x + b$

  *Pooling-Schicht*:\
  Reduktion der Dimensionalität (z.B. Max-Pooling oder Average-Pooling)

  *Aktivierung*:\
  Typisch: ReLU $f(x) = max(0, x)$

  *Architektur-Beispiel*:\
  Input → Conv → ReLU → Pool → Dense → Output

  *Parameteranzahl*:\
  Abhängig von Filtergröße und Anzahl

  *Vorteile*:\
  - Translation-Invarianz\
  - Weniger Parameter als vollständig verbundene Netze

]

#let modell_evaluation = content-block(title: [Modell Evaluation], color: yellow)[

  *Konfusionsmatrix*:\
  *TP = True Positive* - Patienten, die krank sind und als krank klassifiziert wurden\
  *FP = False Positive* - (Patienten, die gesund sind, aber als krank klassifiziert wurden \
  *TN = True Negative* - (Patienten, die gesund sind und als gesund klassifiziert wurden\
  *FN = False Negative* - Patienten, die krank sind, aber als gesund klassifiziert wurden

  *Metriken*:\
  Accuracy = $("TP" + "TN")/("TP" + "TN" + "FP" + "FN")$\
  Precision (Relevanz) = $"TP"/("TP" + "FP")$\
  Recall (Sensitivity) = $"TP"/("TP" + "FN")$\
  F1-Score = $2 dot ("Precision" dot "Recall")/("Precision" + "Recall")$

  *Beispiel*:\
  Ein Modell mit hohem Recall identifiziert möglichst viele positive Fälle,\
  auch auf Kosten von mehr False Positives.

  *Wann ist Recall wichtiger?*\
  - Krankheitserkennung\
  - Sicherheitschecks\
  - Betrugserkennung
]

#let entscheidungsbaeume = content-block(title: [Entscheidungsbäume], color: fuchsia)[

  *Grundidee*:\
  Baumstruktur zur schrittweisen Entscheidung basierend auf Features.

  *Split-Kriterien*:\
  - Entropie: $H(S) = -sum p_i log_2(p_i)$\
  - Informationsgewinn\
  - Gini-Index: $"Gini"(S) = 1 - sum p_i^2$

  *Vorteile*:\
  - Interpretierbar\
  - Keine Skalierung notwendig

  *Nachteile*:\
  - Overfitting bei tiefen Bäumen\
  - Instabil bei kleinen Datenänderungen

  *Pruning (Beschneiden)*:\
  Reduziert Komplexität und Overfitting

  *Ensemble-Methoden*:\
  - Random Forests: viele Bäume, Voting\
  - Boosting (z.B. AdaBoost): sequentielle Optimierung

]

#let pca = content-block(title: [Pricipal Component Analysis(PCA)], color: orange)[
  *Ziel*:\
  Reduktion der Dimensionalität bei maximalem Erhalt der Varianz.

  *Schritte*:\
  1. Zentrieren der Daten\
  2. Kovarianzmatrix berechnen\
  3. Eigenvektoren & -werte berechnen\
  4. Hauptkomponenten auswählen (größte Eigenwerte)\
  5. Projektion der Daten auf neue Achsen

  *Mathematisch*:\
  Gegeben Datenmatrix $X$, berechne $C = 1}{n} X^T X$\
  Finde Eigenvektoren $v$ mit $C v = lambda v$

  *Eigenschaften*:\
  - Unüberwachtes Verfahren\
  - Hauptachsen sind orthogonal\
  - Keine Label nötig

  *Anwendungen*:\
  - Visualisierung\
  - Vorverarbeitung für ML\
  - Rauschreduktion


]

#let reinforcement_learning = content-block(title: [Reinforcement Learning], color: maroon)[
  *Grundidee*:\
  Ein Agent lernt durch Interaktion mit einer Umgebung, um Belohnungen zu maximieren.

  *Zentrale Begriffe*:\
  - Agent, Environment\
  - Zustand $s$, Aktion $a$, Belohnung $r$, Politik $pi(a|s)$\
  - Ziel: Maximiere erwarteten kumulierten Reward

  *Belohnungsformel*:\
  $R_t = sum_{k=0}^{infinity} gamma^k r_{t+k+1}$ mit Diskontfaktor $gamma in [0,1]$

  *Q-Learning*:\
  $Q(s,a) := Q(s,a) + alpha [r + gamma max_{a'} Q(s',a') - Q(s,a)]$

  *Strategien*:\
  - Exploration vs. Exploitation\
  - $ "var" epsilon$-greedy Policy

  *Anwendungen*:\
  - Spiele (z.B. AlphaGo)\
  - Robotik\
  - Empfehlungssysteme

]
