import serial
import struct
import sys
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from mpl_toolkits.mplot3d import axes3d, Axes3D



ser = serial.Serial('\\\\.\\COM10', timeout = None)

fig = plt.figure()
ax = Axes3D(fig) #<-- Note the difference from your original code...
X = 0
Y = 0
Z = 0
ax.set_xlim3d(-1,1)
ax.set_ylim3d(-1,1)
ax.set_zlim3d(-1,1)

def animate(i):
    data = ser.read(14)
    U, V, W, cr, nl = struct.unpack('fffcc',data)
    Vector = np.array([U,V,W]) /np.linalg.norm([U,V,W], ord=2);
    print(Vector)
    ax.clear()
    ax.quiver(X, Y, Z, Vector[0],Vector[1],Vector[2], length = 0.05, normalize=True,)

ani = animation.FuncAnimation(fig, animate, interval=1000)
plt.show()

exit()

