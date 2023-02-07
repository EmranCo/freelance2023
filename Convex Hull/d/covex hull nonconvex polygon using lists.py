def convex_hull(polygon):
    # Find the leftmost vertex of the polygon
    leftmost = min(polygon, key=lambda v: v[0])

    # Create a list to store the convex hull vertices
    hull = [leftmost]

    # Start at the leftmost vertex and iterate clockwise
    current = leftmost
    while True:
        next_vertex = None
        for vertex in polygon:
            if vertex == current:
                continue
            elif next_vertex is None:
                next_vertex = vertex
            else:
                # Compare the angle between the current vertex and the next candidate vertex
                # with the angle between the current vertex and the next_vertex
                cross_product = (vertex[0] - current[0]) * (next_vertex[1] - current[1]) - (vertex[1] - current[1]) * (next_vertex[0] - current[0])
                if cross_product > 0:
                    next_vertex = vertex
                elif cross_product == 0:
                    # If the cross product is 0, choose the vertex that is farther away
                    dist1 = (vertex[0] - current[0]) ** 2 + (vertex[1] - current[1]) ** 2
                    dist2 = (next_vertex[0] - current[0]) ** 2 + (next_vertex[1] - current[1]) ** 2
                    if dist1 > dist2:
                        next_vertex = vertex

        # Add the next vertex to the convex hull
        hull.append(next_vertex)

        # Update the current vertex
        current = next_vertex

        # If we have completed a loop and returned to the leftmost vertex, exit the loop
        if current == leftmost:
            break

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
