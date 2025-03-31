#import "summify.typ": *

#let lineare_regression = content-block(title: [Lineare Regression], color: red)[
  Linearer Zusammenhang zwischen den Eingabevariablen x und der Ausgabevariable y wird modelliert.

  *Hypothesenfunktion*:\
  $h_theta (x) = theta_0 + theta_1 x_1 + theta_2 x_2 + dots + theta_n x_n$

  *Kostenfunktion (MSE)*:\
  $J(theta) = 1 / (2n) sum_(i=1)^n (h_theta (x^(\(i\))) - y^(\(i\)))^2$ \
  mit $n dots "Anzahl Trainingsdaten"$ \
  Je kleiner $J (theta)$, desto besser die Hypothese.

  *Ziel*:
  Finde Parameter $theta$ um J zu minimieren \
  *$min J(theta)$*

  *Multivariat*:\
  Mehrere Features $x_1, x_2, dots, x_n$

  *Polynom-Regression*:\
  $h_theta (x) = theta_0 + theta_1 x + theta_2 x^2 + theta_3 x^3 + dots$\
  Wird eingesetzt, wenn wenn Features nicht-linearen Zusammenhang haben.
]

#let gradient_descent = content-block(title: [Gradient Descent], color: green)[

  *Update-Regel*:\
  $theta_j := theta_j - alpha space partial / (partial theta_j) J(theta)$ \
  $alpha dots dots$ Lernrate\
  $partial / (partial theta_j) J(theta) dots dots$ Ableitungsterm, gibt Richtung des steilsten Anstiegs an \

  *Update-Regel für lineare Regression*:\
  $theta_j := theta_j + alpha 1 / n sum_(i=1)^n [(y^(\(i\)) - h_theta (x^(\(i\)))) dot x_j^(\(i\))]$\
  mit $theta_j$ als Parameter und *$x_0^(\(i\)) = 1$ für den Bias-Term, beim ersten $theta_0$ Update.*\

  *Lernrate $alpha$*:\
  Zu groß → Divergenz,\
  zu klein → (zu) langsame Konvergenz

  - *Beispiel:*
    Kostenfunktion mit den neuen Parametern (nach einem Gradient Descent Update) ist größer als mit den alten Parametern
    (vor dem Update). Vermutlich ist die Lernrate $alpha$ zu groß gewählt

  *Eigenschaften*:
  - Bei geeigneter Lernrate konvergiert Gradient Descent zu einem *lokalen Minimum* der Kostenfunktion. Bei konvexen Funktionen sogar zum *globalen Minimum.* Bei Update nach dem erreichen des Minimums bleibt $theta$ konstant.
  - Eine konstante Lernrate kann ausreichen, wenn sie angemessen gewählt ist. Adaptive Lernraten können die Konvergenz verbessern.
  - Steilere Kostenfunktionen erfordern kleinere Lernraten
]

#let logistische_regression = content-block(title: [Logistische Regression], color: blue)[


  *Hypothese*:\
  $h_theta (x) = g(theta^T x) = 1 / (1+ e^(- theta^T x))$\

  $g(z) = 1 / (1+ e^(-z)) dots dots$ Sigmoidfunktion\
  mit $theta^T x = theta_0 + theta_1 x_1 + theta_2 x_2 + dots + theta_n x_n$


  *Klassifikation*:\
  $h_theta (x)$ ist quasi Wahrscheinlichkeit (0...1)\
  $h_theta (x) gt.eq 0.5 arrow$ Klasse 1\
  $h_theta (x) lt 0.5 arrow$ Klasse 0

  *Entscheidungsgrenze*:\
  + $theta^T x = 0$ bzw. $z = 0$ weil da wird $h_theta (theta^T x) = 0.5$\
  + Umformen zu $x_2 = x_1 + d$ \
  + *Beispiel* mit $x_2 = 2 -1.5 x_1$:
  #image("plots/entscheidungsgrenze.svg", width: 100%)

  *Nicht-linearität*: \
  Polynomielle Features erzeugen nicht-lineare Entscheidungsgrenzen\
  $h_theta (x) = g(theta_0 + theta_1 x_1 + theta_2 x_2 + theta_3 x_1^2 + theta_4 x_2^2 + theta_5 x_1 x_2 + dots)$

  *Polynom-Regression*:\
  $h_theta (x) = theta_0 + theta_1 x_1 + theta_2 x_2_+ theta_3 x_1 x_2 + theta_4 x_1^2 + theta_5 x_2^2 + dots$\
  Fähigkeit, nicht-lineare Entscheidungsgrenzen zu erzeugen
]

#let regularisierung = content-block(title: [Regularisierung], color: navy)[

  $+ lambda sum_(j=1)^d theta_j^2$,
  $space space d dots$ Dimension der Eingabedaten\

  *Kostenfunktion mit L2-Regularisierung*:\
  $J(theta) = 1 / (2n) (sum_(i=1)^n (h_theta (x^((i))) - y^(\(i\)))^2 + lambda sum_(j=1)^d theta_j^2)$

  *Effekt von $lambda$ (Regularisierungsparameter)*:\
  - $lambda = 0$ → kein Penalty\
  - kleines $lambda$ → schwache Bestrafung von großen Parameterwerten, Gefahr von Overfitting\
  - großes $lambda$ → starke Bestrafung von großen Parameterwerten, Gefahr von Underfitting

  *Bias-Term $theta_0$ wird oft nicht regularisiert*
]

#let svm_block = content-block(title: [Support Vector Machines], color: aqua)[

  *Ziel*:\
  $min_(w,b) { 1 / 2 \|\|w\|\|^2 + C sum_(i=1)^n xi_i }$

  *Nebenbedingungen*:\
  $y^(\(i\)) (w^T x^(\(i\)) + b) gt.eq 1 - xi_i$, mit $xi_i gt.eq 0 space space (i = 1, dots, n)$

  *C kontrolliert Trade-off*:\
  Um *Outlier* weniger zu gewichten und eine robustere Entscheidungsgrenze zu erhalten, muss der Parameter C verkleinert werden. Dadurch ist weniger Gewicht auf den „Strafterm“ für das Nicht-Einhalten der Nebenbedingung \
  großes $C$ → weniger Fehler,\
  kleines $C$ → größerer Margin

  *Kernel*:\
  $K (x,l) = exp (-(\|\|x-l\|\|^2) / (2 sigma^2))$

  *Kernel-Funktionen*:\
  - *Linear*: $K(x_i, x_j) = x_i^T x_j$\
    Für lineare Trennungen\
  - *Polynomial*: $K(x_i, x_j) = (x_i^T x_j + r)^d$\
    $r dots dots$ konstanter Offset\
    $d dots dots$ Grad des Polynoms\
    Erlaubt gekrümmte Trennungen (Parabeln, ...)
  - *RBF (Gaussian)*: $K(x_i, x_j) = e^(-gamma \|\|x_i - x_j\|\|^2)$\
    Komplexe, nicht-lineare Trennungen\
  - *Sigmoid*: $K(x_i, x_j) = tanh(kappa x_i^T x_j + c)$
    Inspiriert von neuronalen Netzen, selten verwendet\

  *Wählen von Stützpunkten ("Landmarks")*:\
  - Oft einfach: Alle Trainingspunkte → jeder Punkt wird zum Landmark (klassisch bei RBF-Kernel)

  - Alternativ: nur ausgewählte Punkte, z.B.

    - Support-Vektoren (nur „wichtige“ Punkte)

    - Clusterzentren (z.B. mit K-Means)

    - Gleichmäßig verteilt im Raum (für generalisierte Modelle)

  Ziel: Landmark-Punkte definieren die Feature-Transformation durch den Kernel.
  \
  - Vorhersage: $y=1$ $y=1, "wenn" b + w_1 f_1 + w_2 f_2 + w_3 f_3 gt.eq 0$, sonst $y=-1$
  - Neue Landmark berücksichtigen → passenden $w_i$ erhöhen
  - Bereich zwischen zwei Landmarks ausschließen → $w$ verkleinern
  - Bereich mit $y=1$ vergrößern → $w$ oder $b$ erhöhen
  - Bereich mit $y=1$ verkleinern → $w$ oder $b$ verringern
]

#let neuronale_netzwerke = content-block(title: [Neuronale Netzwerke], color: purple)[

  $z_j^(\(l\))$ ist der gewichtete Input für Neuron $j$ in Layer $l$.\
  $a_j^(\(l\))$ ist die Aktivierung des Neurons $j$ in Layer $l$.\

  *Parametermatrizen*:\
  dim($theta^(\(l\))$) = $(s_(l+1) times (s_l + 1))$\
  $theta^(l) dots dots $Gewichtsmatrizen,
  $l dots dots$ layer,\
  $s_l dots dots$ Anzahl Units in Layer \($l$\),
  in $(s_l + 1)$, das +1 steht für Bias-Unit (zusätzliche Spalte)

  *Fehlerterm $delta$*:\
  $delta_(i j)^(\(l\)) = h_theta (x^(\(i\)))-y^(\(i\))$\
  $i dots "Trainingsbeispiel"$,
  $j dots "Neuron"$,
  $l dots$ layer,\
  $h_theta (x^(\(i\))) dots "Netzwerkvorhersage"$,
  $y^(\(i\)) dots "tatsächlicher Zielwert"$,
  $n dots "Anzahl Trainingsbeispiele"$,\

  *Gradientenberechnung (Backpropagation)*:\
  $partial / (partial Theta_(i j)^(\(l -1\))) J(Theta) = 1 / n sum_(k=1)^n delta_(k i)^(\(l\)) a_j^(\(l-1\))$ \

  *Feedforward*:\
  $z^(l+1) = theta^(l) a^(l)$\
  $a^(l+1) = g(z^(l+1))$

  *Backpropagation*:\
  $delta_j^(\(l\)) = (sum_(k=1)^(s_(l+1))(Theta_(k j)^(\(l\)) dot delta_k^(\(l+1\))))dot g'(z_j^(\(l\)))$\
  $Theta_(k j)^(\(l\)) dots$ Gewicht zwischen Neuron $j$ in Layer $l$ und Neuron $k$ im Layer $l+1$\
  $delta_k^(\(l+1\))) dots$ Fehlerterm aus der folgenden Schicht (bereits berechnet).\
  $g'(z_j^(\(l\)))$Ableitung der Aktivierungsfunktion am Wert $z_j^(\(l\))$\

  $delta^(L) = a^(L) - y$\
  $delta^(l) = (theta^(l))^T delta^(l+1) dot g'(z^(l))$

  *Gradientenabstieg*:\
  $theta^(l) := theta^(l) - alpha delta^(l) a^(l-1)$

  *Aktivierungsfunktionen*:\
  Sigmoid, Tanh, ReLU, Leaky ReLU, Softmax

  *Symmetrie*:\
  Austausch der Neuronen in einem Hidden Layer (inkl. zugehöriger Gewichte im nächsten Layer) → hat keinen Einfluss auf den Output
  $h_Theta (x)$, da die Gesamtfunktion identisch bleibt.
]

#let convolutional_neuronale_netzwerke = content-block(title: [Convolutional Neuronal Networks], color: olive)[

  *Stride*: Bestimmt, um wie viele Pixel der Filter bei jedem Schritt verschoben wird. Ein gröÿerer Stride führt zu einer stärkeren Dimensionsreduktion.
  *Padding*:Das Hinzufügen zusätzlicher Pixel am Rand des Eingabebildes.
  - *"Valid"* Padding: Kein zusätzliches Padding, der Filter wird nur angewendet, wenn er vollständig innerhalb des Bildes liegt.
  - *"Same"* Padding: Fügt Padding hinzu, sodass die Ausgabedimension gleich der Eingabedimension bleibt (bei Stride 1).

  $"Ausgabedimension" = ("Eingabedimension" - " Filtergröße" + 2 dot "Padding") / ("Stride") +1$

  *Output Convolutional Filter*:\
  Output = $sum_(i=0)^2 sum_(j=0)^2 "Input" [i,j] dot "Filter"[i,j]$\
  Beispiel: \

  Filter: $space space space space space space space space space space space space space space space space space space $ Input:
  #let table1 = table(
    columns: 3,
    "1", "2", "1",
    "2", "4", "2",
    "1", "2", "1",
  )

  #let table2 = table(
    columns: 3,
    "2", "5", "4",
    "13", "25", "15",
    "8", "6", "6",
  )
  #divided(table1, table2)
  $= 2*1 + 5*2 + 4*1 + 13*2 + 25*4 + 15*2 + 8*1 + 6*2 + 6*1 = 2 + 10 + 4 + 26 + 100 + 30 + 8 + 12 + 6 = 198$



  *Hauptidee*:\
  Extraktion lokaler Merkmale durch Faltungsoperationen.

  *Faltungsschicht (Convolution Layer)*:\
  wendet Filter (Kerne) an:\
  $z = W ast x + b$

  *Aktivierung*:\
  Typisch: ReLU $f(x) = max(0, x)$

  *Architektur-Beispiel*:\
  Input → Conv → ReLU → Pool → Dense → Output

  *CNN Outputdimension*:\
  Input: 100x100 Pixel, 3 Kanäle\
  Kernel: 3x3, Stride = 1, „same padding“\
  + 1 Filter → Output-Dim: 100x100x1\
  + 60 Filter → Output-Dim: 100x100x60\
  Faustregel: Anzahl der Filter = Anzahl Output-Kanäle\
  *Vorteile*:\
  - Translation-Invarianz\
  - Weniger Parameter als vollständig verbundene Netze
]

#let modell_evaluation = content-block(title: [Modell Evaluation], color: yellow)[

  *Konfusionsmatrix*:\
  *TP = True Positive* - Patienten, die krank sind und als krank klassifiziert wurden\
  *FP = False Positive* - Patienten, die gesund sind, aber als krank klassifiziert wurden \
  *TN = True Negative* - Patienten, die gesund sind und als gesund klassifiziert wurden\
  *FN = False Negative* - Patienten, die krank sind, aber als gesund klassifiziert wurden

  *Metriken*:\
  Accuracy = $("TP" + "TN")/("TP" + "TN" + "FP" + "FN")$\
  Precision (Relevanz) = $"TP"/("TP" + "FP")$\
  Recall (Sensitivity) = $"TP"/("TP" + "FN")$\
  F1-Score = $2 dot ("Precision" dot "Recall")/("Precision" + "Recall")$

  *Beispiel*:\
  Ein Modell mit hohem Recall identifiziert möglichst viele positive Fälle, auch auf Kosten von mehr False Positives.

  *Wann ist Recall wichtiger?*\
  - Krankheitserkennung\
  - Sicherheitschecks\
  - Betrugserkennung\

  *Hohe Fehler auf Training & CV*\
  → (Underfitting) Braucht mehr hidden Layers, Neuronen, weniger Regularisierung\
  *Gute Trainingsperformance, schlechte CV*\
  → (Overfitting) Braucht mehr Trainingsdaten, weniger Features, mehr Regularisierung
]

#let entscheidungsbaeume = content-block(title: [Entscheidungsbäume], color: fuchsia)[


  *Grundidee*:\
  Baumstruktur zur schrittweisen Entscheidung basierend auf Features.

  *Split-Kriterien*:\
  - Entropie: $H = - p_i log_2(p_i) - p_j log_2(p_j) - dots$\
    $p_i dots $Wahrscheinlichkeit (relative Häufigkeit) der Klasse $i$,
    $p_j dots $Wahrscheinlichkeit der Klasse $j$\

    $p_i = u / n$,
    $p_j = v / n$\
    $n dots$ Gesamtanzahl Datenpunkte,\
    $u dots$ Anzahl Datenpunkte der Klasse $i$,\
    $v dots$ Anzahl Datenpunkte der Klasse $j$\

    $H = 0 arrow$ maximale Ordnung (reine klasse)\
    $H=1 arrow$ maximale Unordnung\

    *Informationsgewinn Gain(A)*:\
    $"Gain"(A) = H("Ursprungspartition")\ - ((\|"P1"\|) / (\|"P1"\|+\|"P2"\|) dot H ("P1") + (\|"P2"\|) / (\|"P1"\|+\|"P2"\|) dot H("P2)"))$\
    $A dots$ Partitionierung des Datensatzes\
    $\|"P1"\| dots $Anzahl der Datenpunkte in Partition 1\
    $\|"P2"\| dots $Anzahl der Datenpunkte in Partition 2\
    $(\|"P1"\| + \|"P2"\|) dots $Anzahl ALLER Datenpunkte\



  - Gini-Index: $"Gini"(S) = 1 - sum p_i^2$

  *Vorteile*:\
  - Interpretierbar\
  - Keine Skalierung notwendig

  *Nachteile*:\
  - Overfitting bei tiefen Bäumen\
  - Instabil bei kleinen Datenänderungen

  *Pruning (Beschneiden)*:\
  Reduziert Komplexität und Overfitting

  #image("plots/entscheidungsbaum.png", width: 100%)
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
  *Value Function*:\
  Erwarteter kumulativer Reward für eine gegebene Policy $pi$. Maß für die "Güte" eines Zustands:\
  $v_pi (S_1) = "unmittelbarer Reward" + "Wert des Folgezustands"$\
  $v_pi (S_1) = R_2 + v_pi (S_2)$\
  $s dots$ Zustand,
  $pi dots$ Policy,
  $R dots$ unmittelbarer Reward
  $v_pi (s) dots$ Wertfunktion für Zustand $s$

  *"Wert von Zustand „S“ "*:\
  Einfach alle Werte der kommenden Felder, entlang der Policy $pi$ addieren.\
  $v_pi (S) = (-1)*16$
  #image("plots/reward-graph.png", width: 100%)

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

#let backpropagation_aufgabe = content-block(title: [Backpropagation Aufgabe (21)], color: teal)[
  *Gegeben*:\

  - $x^(\(1\)) = (x_1^(\(1\)), x_2^(\(1\))) = mat(0.5, 0.7)$,\
  - $y^(\(1\)) = (1)$, ("Klasse 1"),\
  - $h_theta (x^(\(1\))) = 0.5$,\
  - Aktivierungsfunktion: \
    Sigmoid $a_j^(\(i\)) = g(z_j^(\(i\))) = 1 / (1+ e^(-z_j^(\(i\))))$

  - Gewichtsmatrizen:\
    $Theta^(\(1\)) = mat(
                      1 , 1 , 2;
                      2 , 1.5 , 0.7;
                      -0.5 , -1 , 2;
                            )$,\
    $Theta^(\(2\)) = mat(
                      1 , -0.9 , -0.7, 0.9;
                        )$

  *Forward-Propagation*:\

  - Schritt 1 - Input Layer (inklusive Bias):\
    $a^(\(1\)) = mat(1, x_1^(\(1\)), x_2^(\(1\))) = mat(1, 0.5, 0.7)$

  - Schritt 2 - Hidden Layer Input berechnen:\
    $z^(\(2\)) = Theta^(\(1\)) dot a^(\(1\))$
    $mat(
                    1 , 1 , 2;
                    2 , 1.5 , 0.7;
                    -0.5 , -1 , 2;
                          ) dot mat(1, 0.5, 0.7)$\
    $= mat(1 dot 1 + 1 dot 0.5 + 2 dot 0.7, 2 dot 1 + 1.5 dot 0.5 + 0.7 dot 0.7, -0.5 dot 1 - 1 dot 0.5 + 2 dot 0.7)$\
    $= mat(2.9, 3.24, 0.4)$

  - Schritt 3 - Aktivierungsfunktion (Sigmoid) anwenden:\
    $a^(\(2\)) = g(z^(\(2\)))$
    $= (1,1 / (1+e^(-z_1^(\(2\)))), 1 / (1+e^(-z_2^(\(2\)))),1 / (1+e^(-z_3^(\(2\)))) )$
    $ ≈ mat(1, 0.948, 0.962, 0.599)$, die 1 ist der Bias-Term.

  - Schritt 4 - *Gradientenberechnung (Backpropagation)*\
    $partial / (partial Theta_(i j)^(\(l -1\))) J(Theta) = 1 / n sum_(k=1)^n delta_(k i)^(\(l\)) a_j^(\(l-1\))$ \

    $delta_(11)^(\(3\)) dot a^(\(2\)) = -0.5 dot 0.948 = -0.474$

  - Schritt 5 *Prüfen mittels Gradientenquotienten*:\
    $J(Theta) = 1 / (2n) (sum_(i=1)^n (h_Theta (x^((i))) - y^(\(i\)))^2$\

    $= 1 / 2 (0.5 - 1)^2$
    $= 0.125$\
]

#let boolsche_neuronale_netzwerke = content-block(title: [Boolesche Neuronale Netzwerke], color: lime)[

  #image("plots/general_boolean_network.svg", width: 60%)

  #table(
    columns: 4,
    table.header(
      "Funktion",
      "a",
      "b",
      "c",
    ),

    ($x_1 "and" x_2$), "-30", "20", "20",
    $("not" x_1) "and (not" x_2)$, "10", "-20", "-20",
    $x_1 "or" x_2$, "-10", "20", "20",
  )

]
