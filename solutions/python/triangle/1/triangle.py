def is_triangle(sides):
    first_side, second_side, third_side = sides
    if first_side > 0 and second_side > 0 and third_side > 0:
        return first_side + second_side >= third_side and second_side + third_side >= first_side and first_side + third_side >= second_side
    return False

def equilateral(sides):
    return is_triangle(sides) and sides[0] == sides[1] and sides[0] == sides[2]


def isosceles(sides):
    return is_triangle(sides) and (sides[0] == sides[1] or sides[0] == sides[2] or sides[1] == sides[2])


def scalene(sides):
    return is_triangle(sides) and sides[0] != sides[1] and sides[0] != sides[2] and sides[1] != sides[2]
