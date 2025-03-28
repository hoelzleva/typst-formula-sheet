# 🧠 AI Formula Sheet (Typst)

This repository contains a modular and printable **formula sheet** for the `Introduction to AI` lecture — built with [Typst](https://typst.app), a modern typesetting language.

It provides a clean layout to organize and present key formulas and concepts, ready for print or digital use.

---

## 📁 Project Structure

├── content.typ # Reusable formula blocks (e.g. regression, SVM, etc.) \
├── arrangement.typ # Defines the layout/arrangement of the formula blocks \
├── summify.typ # Custom layout wrapper for page setup and header \
├── main.typ # Entry point (imports summify, content, arrangement) \
└── README.md

## ✨ Features

- Clean A4 layout with optional flipped margins for double-sided printing
- Easy to extend: add your own formula blocks in `content.typ`
- Flexible multi-column layout in `arrangement.typ`
- Customizable page titles and styles via `summify.typ`

---

## 🚀 Getting Started

1. **Install Typst**:  
   Follow instructions at [typst.app/docs](https://typst.app/docs/)

2. **Clone this repo**:

```bash
   git clone https://github.com/your-username/ai-formulas-typst.git
   cd ai-formulas-typst
```

3. **Compile the document**:

```bash
typst compile main.typ
```

Or use the Typst web app by uploading the files.

## 🧩 Adding Your Own Formulas

1. Open `content.typ`

2. Add your block:

```typst
#let bayes_theorem = block(
  heading: [Bayes Theorem],
  formula: [$P(A \| B) = \frac{P(B \| A) \cdot P(A)}{P(B)}$],
)
```

3. Include the block in arrangement.typ where needed:

```typst
stack-section-vertical(
  ratios: (1fr, auto),
  bayes_theorem,
  ...
)
```

## 📄 License

MIT License.
Feel free to use, modify, or adapt this project for your courses or formula collections.
