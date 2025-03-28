#import "@preview/tablex:0.0.9": *
#import "@preview/cetz:0.3.2": *
#import "@preview/cetz-plot:0.1.1": *
#import "@preview/pinit:0.1.3": *
#import "summify.typ": *
#import "content.typ": *

#stack-horizontal(
  stack-vertical(
    ratios: (20fr, 1fr),
    topic-block(
      title: [Formeln],
      stack-section-vertical(
        ratios: (1fr, auto),
        stack-section-horizontal(
          ratios: (1fr, 1fr, 1fr, 1fr, 1fr),
          stack-section-vertical(
            ratios: (1fr, auto),
            lineare_regression,
            gradient_descent,
            logistische_regression,
            //insert more content blocks here
          ),
          stack-section-vertical(
            ratios: (1fr, auto),
            regularisierung,
            svm_block,
            neuronale_netzwerke,
            //insert more content blocks here
          ),
          stack-section-vertical(
            ratios: (1fr, auto),
            convolutional_neuronale_netzwerke,
            modell_evaluation,

            //insert more content blocks here
          ),
          stack-section-vertical(
            ratios: (1fr, auto),
            entscheidungsbaeume,
            pca,
          ),
          stack-section-vertical(
            ratios: (1fr, auto),
            reinforcement_learning,
          ),
        ),
      ),
    ),
  ),
)

#pagebreak()


#stack-horizontal(
  stack-vertical(
    ratios: (20fr, 1fr),
    topic-block(
      title: [Aufgaben],
      stack-section-vertical(
        ratios: (1fr, auto),
        stack-section-horizontal(
          ratios: (1fr, 1fr, 1fr, 1fr, 1fr),
          stack-section-vertical(
            ratios: (1fr, auto),
            //insert more content blocks here
          ),
          stack-section-vertical(
            ratios: (1fr, auto),
            //insert more content blocks here
          ),
          stack-section-vertical(
            ratios: (1fr, auto),
            //insert more content blocks here
          ),
          stack-section-vertical(
            ratios: (1fr, auto),
            //insert more content blocks here
          ),
          stack-section-vertical(
            ratios: (1fr, auto),
            //insert more content blocks here
          ),
        ),
      ),
    ),
  ),
)
