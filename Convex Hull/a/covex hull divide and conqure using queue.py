import queue

def divide_and_conquer_convex_hull(points):
    n = len(points)
    if n <= 3:
        return points
    mid = n // 2
    left_hull = divide_and_conquer_convex_hull(points[:mid])
    right_hull = divide_and_conquer_convex_hull(points[mid:])
    return merge_hulls(left_hull, right_hull)

def merge_hulls(left_hull, right_hull):
    n, m = len(left_hull), len(right_hull)
    i = 0
    j = 0
    hull = []
    while i < n and j < m:
        if left_hull[i][0] <= right_hull[j][0]:
            hull.append(left_hull[i])
            i += 1
        else:
            hull.append(right_hull[j])
            j += 1
    while i < n:
        hull.append(left_hull[i])
        i += 1
    while j < m:
        hull.append(right_hull[j])
        j += 1
    return list(lower_hull(hull)) + list(upper_hull(hull))

def lower_hull(hull):
    result = []
    for p in hull:
        while len(result) >= 2 and cross(result[-2], result[-1], p) <= 0:
            result.pop()
        result.append(p)
    return result

def upper_hull(hull):
    result = []
    for p in reversed(hull):
            while len(result) >= 2 and cross(result[-2], result[-1], p) <= 0:
                result.pop()
            result.append(p)
    result.pop()
    return result


def cross(o, a, b):
    return (a[0] - o[0]) * (b[1] - o[1]) - (a[1] - o[1]) * (b[0] - o[0])



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
divide_and_conquer_convex_hull(points)
after = int(round(time.time() * 1000))
print("Time Used = ",(after-before)," MilleSeconds")
