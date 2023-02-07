from collections import deque
import math

def remove_extremal_points(points):
    # Create a queue to store the points
    q = deque()

    # Add all points to the queue
    for point in points:
        q.append(point)

    # Initialize variables for the extremal points
    min_x = float('inf')
    max_x = float('-inf')
    min_y = float('inf')
    max_y = float('-inf')

    # Find the extremal points
    while q:
        point = q.popleft()
        if point[0] < min_x:
            min_x = point[0]
        if point[0] > max_x:
            max_x = point[0]
        if point[1] < min_y:
            min_y = point[1]
        if point[1] > max_y:
            max_y = point[1]

    # Create a list to store the remaining points
    remaining_points = []

    # Iterate through the points again and add the non-extremal points to the list
    for point in points:
        if point[0] != min_x and point[0] != max_x and point[1] != min_y and point[1] != max_y:
            remaining_points.append(point)

    return remaining_points

def cross_product(p1, p2, p3):
    x1 = p2[0] - p1[0]
    y1 = p2[1] - p1[1]
    x2 = p3[0] - p1[0]
    y2 = p3[1] - p1[1]
    return x1*y2 - x2*y1

def convex_hull(points):
    # remove extremal points
    points = remove_extremal_points(points)

    # sort the points by x-coordinate
    points.sort()

    # create the lower hull
    lower = []
    for point in points:
        while len(lower) >= 2 and cross_product(lower[-2], lower[-1], point) <= 0:
            lower.pop()
        lower.append(point)

    # create the upper hull
    upper = []
    for point in reversed(points):
        while len(upper) >= 2 and cross_product(upper[-2], upper[-1], point) <= 0:
            upper.pop()
        upper.append(point)

    # remove the last point of each hull, since it is the same as the first point of the other hull
    upper.pop()
    lower.pop()

    # concatenate the two hulls and return the result
    return lower + upper

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
