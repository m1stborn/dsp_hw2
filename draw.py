import os

import matplotlib.pyplot as plt

if __name__ == '__main__':
    # print(123)
    x = []
    y = []
    with open(f"exp.txt", 'r') as f:
        for line in f.readlines():
            data = line.strip().split(' ')
            x.append(int(data[0]))
            y.append(int(data[1]))
    print(x, y)

    # plot training loss history
    fig = plt.figure(figsize=(10, 6))
    # plt.plot(x, y, label='train loss', lw=3, c="tab:blue")

    plt.legend(fontsize=12)
    plt.xlabel("Iterations", fontsize=15)
    plt.ylabel("Accuracy", fontsize=15)
    plt.savefig("iterations.jpg")
