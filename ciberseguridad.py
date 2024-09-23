import subprocess
import tkinter as tk
from tkinter import scrolledtext

def ejecutar_prolog(consulta):
    proceso = subprocess.Popen(
        ['swipl', '-s', 'ciberseguridad.pl', '-g', consulta, '-t', 'halt'],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    )
    salida, error = proceso.communicate()
    return salida.decode('utf-8').strip(), error.decode('utf-8').strip()

def cargar_activos():
    consulta = "findall(X, activo(X), Activos), atomic_list_concat(Activos, ',', Lista), write(Lista), nl."
    salida, _ = ejecutar_prolog(consulta)

    activos = salida.replace("'", "").split(",")
    return [activo.strip() for activo in activos if activo]

def analizar_activo():
     # Limpiar resultados anteriores
    activo = activo_listbox.get(tk.ACTIVE)
    resultados.delete(1.0, tk.END) 

    consulta_amenaza = f"identificar_ciberamenaza({activo}, Amenaza), nl."
    salida, error = ejecutar_prolog(consulta_amenaza)
    if error:
        resultados.insert(tk.END, "Error: " + error + "\n" + "\n")
    else:
        resultados.insert(tk.END, salida + "\n" + "\n")

    consulta_vulnerabilidad = f"identificar_vulnerabilidad({activo}, Vulnerabilidad), nl."
    salida, error = ejecutar_prolog(consulta_vulnerabilidad)
    if error:
        resultados.insert(tk.END, "Error: " + error + "\n" + "\n")
    else:
        resultados.insert(tk.END, salida + "\n" + "\n")

    # Controles
    consulta_control = f"identificar_control({activo}, Control), nl."
    salida, error = ejecutar_prolog(consulta_control)
    if error:
        resultados.insert(tk.END, "Error: " + error + "\n" + "\n")
    else:
        resultados.insert(tk.END, salida + "\n" + "\n")

    resultados.insert(tk.END, "\n" + "\n")

# Crear la ventana principal
root = tk.Tk()
root.title("Identificación de Ciberseguridad")
root.geometry("900x500")

# Colores
bg_color = "#292C35"  # Color de fondo gris
label_color = "#C8C8CD"  # Color de las etiquetas
button_color = "#C8C8CD"  # Color del botón azul claro
text_color = "#424242"  # Color del texto en resultados
text_bg_color = "#C8C8CD"  # Color de fondo blanco para la caja de texto

# Configuración del layout
root.configure(bg=bg_color)
root.grid_columnconfigure(0, weight=1)
root.grid_columnconfigure(1, weight=3)
root.grid_rowconfigure(0, weight=0)
root.grid_rowconfigure(1, weight=1)
root.grid_rowconfigure(2, weight=0)

# Cargar activos desde Prolog
activos = cargar_activos()

# Listbox para seleccionar activos
tk.Label(root, text="Selecciona un activo:", bg=bg_color, fg=label_color, font=('Arial', 12, 'bold')).grid(row=0, column=0, sticky="nsew", padx=10, pady=(10, 10))
activo_listbox = tk.Listbox(root, height=10, bg=text_bg_color, font=('Arial', 12, 'bold'))
activo_listbox.grid(row=1, column=0, sticky="nsew", padx=10, pady=(10, 10))
for activo in activos:
    activo_listbox.insert(tk.END, activo)

# Caja de texto para mostrar resultados
resultados = scrolledtext.ScrolledText(root, wrap=tk.WORD, width=50, height=15, bg=text_bg_color, font=('Arial', 12, 'bold')) 
resultados.grid(row=1, column=1, rowspan=2, sticky="nsew", padx=10, pady=(10, 10))

# Botón para analizar (con texto más grande)
analizar_btn = tk.Button(root, text="Analizar", command=analizar_activo, width=8, height=2, bg=button_color, fg="black", font=('Arial', 12, 'bold'))
analizar_btn.grid(row=2, column=0, sticky="nsew", padx=10, pady=10)

# Ejecutar la interfaz
root.mainloop()