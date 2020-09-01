import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation


def comet(x, y, *args, **kwargs):
    tf = 3
    fps=30
    
    fig, ax = plt.subplots()
    ln, = plt.plot([], [], 'r.-', alpha=0.5, *args, **kwargs)
    dot, = plt.plot([], [], marker='o', markersize=10)
    plt.xlabel('x')
    plt.ylabel('y')
    plt.grid()

    def init():
        ax.set_xlim(np.min(x)*1.01, np.max(x)*1.01)
        ax.set_ylim(np.min(y)*1.01, np.max(y)*1.01)
        return ln,

    def update(frame):
        i = int(frame*len(x)/(tf*fps))
        ln.set_data(x[:(i + 1)], y[:(i + 1)])
        dot.set_data(x[i], y[i])
        return ln, dot,
    
    plt.close()
    return FuncAnimation(fig, update, frames=range(tf*fps), init_func=init, blit=True, interval=1000/fps)