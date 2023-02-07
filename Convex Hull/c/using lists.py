import math
from typing import List, Tuple

def convex_hull(points: List[Tuple[float, float]]) -> List[Tuple[float, float]]:
    if len(points) < 3:
        return points
    # Find the points with the lowest and highest x and y coordinates
    x_min = min(points, key=lambda p: p[0])[0]
    x_max = max(points, key=lambda p: p[0])[0]
    y_min = min(points, key=lambda p: p[1])[1]
    y_max = max(points, key=lambda p: p[1])[1]
    # Remove all points in the extremal quadrilateral
    new_points = [p for p in points if p[0] > x_min and p[0] < x_max and p[1] > y_min and p[1] < y_max]
    if len(new_points) < 3:
        return new_points
    # Find the point with the lowest y-coordinate (and smallest x-coordinate in case of ties)
    start = min(new_points, key=lambda p: (p[1], p[0]))
    # Sort the remaining points by angle with the starting point
    sorted_points = sorted(new_points, key=lambda p: math.atan2(p[1] - start[1], p[0] - start[0]))
    # Initialize the hull with the first three points
    hull = [sorted_points[0], sorted_points[1], sorted_points[2]]

    for i in range(3, len(sorted_points)):
        while len(hull) > 1 and cross_product(hull[-2], hull[-1], sorted_points[i]) <= 0:
            hull.pop()
        hull.append(sorted_points[i])
    return hull

def cross_product(p1: Tuple[float, float], p2: Tuple[float, float], p3: Tuple[float, float]) -> float:
    return (p2[0] - p1[0]) * (p3[1] - p1[1]) - (p2[1] - p1[1]) * (p3[0] - p1[0])


def read_txt_file(file_path):
    # Read the contents of the file into a list of strings
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # Create an empty list to store the data
    data = []

    # Iterate through the lines and split them into columns
    for line in lines:
        columns = line.strip().split()
        del(columns[2])
        columns[0] = int(columns[0])
        columns[1] = int(columns[1])
        columns = tuple(columns)
        data.append(columns)
    return data


points = read_txt_file('ban5000w-0.01-adjlist.txt')

import time

before = int(round(time.time() * 1000))
convex_hull(points)
after = int(round(time.time() * 1000))
print("Time Used = ",(after-before)," MilleSeconds")
