def check_sequence(seq)
    # Split the input string into a list of elements
    elements = seq.split(' ')

    # Check if any of the elements are non-numeric
    return 1 if elements.any? { |e| !e.match?(/\A\d+\z/) }

    # Convert the list of elements into a list of integers
    integers = elements.map(&:to_i)

    # Sort the list of integers in ascending order
    integers.sort!

    # Check if the sorted list of integers forms an ascending sequence starting with 1, with an increment of 1
    if integers == (1..integers.size).to_a
      return 0 # Complete sequence
    else
      # Find the lowest missing number in the sequence
      (1..integers.size).each do |n|
        return n unless integers.include?(n)
      end
    end
  end

p check_sequence("1 2 3 4")
p check_sequence("1 2 4 3")
p check_sequence("2 1 3 a")
p check_sequence("1 3 2 5")
p check_sequence("1 5")
