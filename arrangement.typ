#import "@preview/tablex:0.0.9": *
#import "@preview/cetz:0.3.2": *
#import "@preview/cetz-plot:0.1.1": *
#import "@preview/pinit:0.1.3": *
#import "summify.typ": *
#import "content.typ": *

#stack-horizontal(
  ratios: (1fr, 3fr),
  stack-vertical(
    ratios: (3fr, 1.6fr),
    topic-block(
      title: [Funktionsuntersuchung],
      stack-section-vertical(
        ratios: (3fr, auto),
        lineare_regression,
        gradient_descent,
      ),
    ),
    topic-block(
      title: [Funktionsuntersuchung],
      stack-vertical(ratios: (1fr, auto)),
    ),
  ),
  stack-vertical(
    ratios: (3fr, 1.6fr),
    topic-block(
      title: [Integralrechnung],
      stack-section-vertical(
        ratios: (1fr, auto),
        stack-section-horizontal(
          ratios: (3fr, 3fr, 1fr),
          stack-section-vertical(ratios: (1fr, auto)),
          stack-section-vertical(
            ratios: (1fr, auto),
            stack-section-horizontal(),
          ),
        ),
        stack-section-horizontal(ratios: (2.25fr, 1fr)),
      ),
    ),
    stack-horizontal(
      ratios: (3fr, 1.5fr),
      topic-block(
        title: [Exponentialfunktionen & Wachstum],
        stack-section-horizontal(
          stack-section-vertical(ratios: (1fr, auto)),
          stack-section-vertical(ratios: (auto, 1fr)),
        ),
      ),
      topic-block(
        title: [Kurvenanpassung],
        stack-section-vertical(ratios: (auto, 1fr)),
      ),
    ),
  ),
)
