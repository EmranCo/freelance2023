def convex_hull(points):
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
    points = [p for p in points if not (p[0] == xmin or p[0] == xmax or p[1] == ymin or p[1] == ymax)]
    # sort the points by x-coordinate
    points.sort(key=lambda p: (p[0], p[1]))
    # initialize the stack and add the leftmost point to it
    hull = []
    for p in points:
        while len(hull) > 1 and cross(hull[-2], hull[-1], p) <= 0:
            hull.pop()
        hull.append(p)
    # return the convex hull
    return hull

# function for computing the cross product of vectors (p1, p2) and (p1, p3)
def cross(p1, p2, p3):
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
        data.append(columns)
    return data


points = read_txt_file('ban5000w-0.01-adjlist.txt')

import time

before = int(round(time.time() * 1000))
convex_hull(points)
after = int(round(time.time() * 1000))
print("Time Used = ",(after-before)," MilleSeconds")
