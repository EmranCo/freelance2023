from typing import List, Tuple
import math

def convex_hull(points: List[Tuple[float, float]]) -> List[Tuple[float, float]]:
    if len(points) < 3:
        return points
    # Find the point with the lowest y-coordinate (and smallest x-coordinate in case of ties)
    start = min(points, key=lambda p: (p[1], p[0]))
    # Sort the points by angle with the starting point
    sorted_points = sorted(points, key=lambda p: math.atan2(p[1] - start[1], p[0] - start[0]))
    #Initialize the hull with the first three sorted points
        # Initialize the hull with the first three sorted points
    hull = [sorted_points[0],sorted_points[1],sorted_points[2]]
    for i in range(3, len(sorted_points)):
        while len(hull) > 1 and cross(hull[-2], hull[-1], sorted_points[i]) <= 0:
            hull.pop()
        hull.append(sorted_points[i])
    return hull

def cross(p1: Tuple[float, float], p2: Tuple[float, float], p3: Tuple[float, float]) -> float:
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


points = read_txt_file('./ban5000w-0.01-adjlist.txt')

import time

before = int(round(time.time() * 1000))
convex_hull(points)
after = int(round(time.time() * 1000))
print("Time Used = ",(after-before)," MilleSeconds")



