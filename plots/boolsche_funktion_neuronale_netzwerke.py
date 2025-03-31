import matplotlib.pyplot as plt
import matplotlib.patches as patches

fig, ax = plt.subplots(figsize=(5, 4))
ax.set_xlim(0, 9)
ax.set_ylim(0, 9)
ax.axis("off")

# Neuronen (Kreise)
circle_style = dict(edgecolor="darkblue", facecolor="none", linewidth=2)

# Eingabeneuronen
input_nodes = {
    "+1": (1, 8),
    "$x_1$": (1, 5),
    "$x_2$": (1, 2),
}
for label, (x, y) in input_nodes.items():
    circ = patches.Circle((x, y), radius=0.6, **circle_style)
    ax.add_patch(circ)
    ax.text(x, y, label, ha="center", va="center", fontsize=18)

# Zielneuron (Output)
output_circle = patches.Circle((6, 5), radius=0.6, edgecolor="orange", facecolor="none", linewidth=2)
ax.add_patch(output_circle)
ax.text(7, 5, r"--->$h_\Theta(x)$", fontsize=18)

# Verbindungen + Gewichte
connections = {
    "+1": ("a", (1, 8)),
    "$x_1$": ("b", (1, 5)),
    "$x_2$": ("c", (1, 2)),
}

for label, (weight, (x1, y1)) in connections.items():
    ax.annotate("",
                xy=(5.4, 5), xytext=(x1 + 0.6, y1),
                arrowprops=dict(arrowstyle="->", lw=1.5))

    # Gewicht daneben schreiben (grün)
    mid_x = (x1 + 0.6 + 5.4) / 2
    mid_y = (y1 + 5) / 2
    ax.text(mid_x, mid_y, str(weight), color="green", fontsize=30)

# Als SVG speichern
plt.savefig("plots/general_boolean_network.svg", format="svg")

# plt.show()
