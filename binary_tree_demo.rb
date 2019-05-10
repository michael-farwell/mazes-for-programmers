require 'grid'
require 'binary_tree'

grid = Grid.new(4, 4)

BinaryTree.on(grid)

# ASCII text drawing
puts "\n"
puts grid

# PNG drawing
img = grid.to_png
img.save 'images/maze.png'