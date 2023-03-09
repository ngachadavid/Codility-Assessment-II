def is_cube(volume, side)
    # Check if either volume or side is less than or equal to 0
    return false if volume <= 0 || side <= 0

    # Check if the volume is divisible by the cube of the side (i.e., if it could be a cube)
    return volume % (side ** 3) == 0
  end

p is_cube(14, 6)
p is_cube(64, 4)
p is_cube(8, 3)

