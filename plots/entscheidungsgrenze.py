import matplotlib.pyplot as plt
import numpy as np

# Definitionsbereich für x1
x1 = np.linspace(0, 4, 100)
# Entscheidungsgrenze: z. B. x2 = -x1 + 2 (wie im Bild zu erkennen)
x2 = - 1.5 * x1 + 2

# Erstelle das Diagramm
plt.figure(figsize=(6, 6))
plt.plot(x1, x2, label='Entscheidungsgrenze', color='blue')

# Achsen und Bereich
plt.xlim(0, 2.5)
plt.ylim(-1, 2.5)
plt.xlabel('$x_1$')
plt.ylabel('$x_2$')
plt.grid(True)

# Klassenzonen einfärben
# Hatches wurden so hässlich gewählt, da man sie auch in schwarz-weiss gut unterscheiden kann
plt.fill_between(x1, x2, 4, color='None', alpha=0.8, hatch="X", label='Klasse 1 ($h_\\theta(x) \\geq 0.5$)', edgecolor='green')
plt.fill_between(x1, x2, -2, color='None', alpha=0.8, hatch="*",label='Klasse 0 ($h_\\theta(x) < 0.5$)', edgecolor='lightcoral')

plt.legend()
plt.title("Entscheidungsgrenze und Klassenbereiche")
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)

# Als SVG speichern
plt.savefig("plots/entscheidungsgrenze.svg", format="svg")

# plt.show()


