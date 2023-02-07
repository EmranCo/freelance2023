'''
Python code that uses three data structures (a set, a list, and a stack) to 
implement the Convex Hull algorithm with a preprocessing step that removes 
all points in the extremal quadrilateral:
'''
from typing import List, Tuple

def convex_hull(points: List[Tuple[int, int]]) -> List[Tuple[int, int]]:
    # remove all points in the extremal quadrilateral
    xmin, ymin, xmax, ymax = float('inf'), float('inf'), float('-inf'), float('-inf')
    for x, y in points:
        if x < xmin:
            xmin = x
        if y < ymin:
            ymin = y
        if x > xmax:
            xmax = x
        if y > ymax:
            ymax = y
    points = {(x, y) for x, y in points if not (x == xmin or x == xmax or y == ymin or y == ymax)}

    # sort points by angle with the lowest point
    def angle_cmp(p1, p2):
        if p1[0] == p2[0]:
            return p1[1] - p2[1]
        return (p1[0] - p2[0]) / (p1[1] - p2[1])

    lowest_point = min(points, key=lambda p: (p[1], p[0]))
    points.remove(lowest_point)
    points = sorted(points, key=lambda p: angle_cmp(p, lowest_point))

    # use a stack to keep track of the convex hull
    hull = [lowest_point]
    for p in points:
        while len(hull) > 1 and (p[0] - hull[-2][0]) * (hull[-1][1] - hull[-2][1]) <= (hull[-1][0] - hull[-2][0]) * (p[1] - hull[-2][1]):
            hull.pop()
        hull.append(p)
    return hull


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
        data.append(columns)
    return data



points = read_txt_file('ban5000w-0.01-adjlist.txt')

import time

before = int(round(time.time() * 1000))
convex_hull(points)
after = int(round(time.time() * 1000))
print("Time Used = ",(after-before)," MilleSeconds")
