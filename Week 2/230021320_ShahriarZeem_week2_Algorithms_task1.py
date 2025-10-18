import math
from itertools import permutations

def distance(p1, p2):
    return math.sqrt((p1[0] - p2[0])**2 + (p1[1] - p2[1])**2)

def optimize_path(destinations):

    start = destinations[0]
    others = destinations[1:]
    shortest_path = []
    min_distance = float('inf')

    for order in permutations(others):
        total = 0
        current = start

        for point in order:
            total += distance(current, point)
            current = point

        if total < min_distance:
            min_distance = total
            shortest_path = [start] + list(order)

    return shortest_path[::-1]




destinations = [(0, 0), (2, 3), (5, 1), (1, 4)]
print(optimize_path(destinations))