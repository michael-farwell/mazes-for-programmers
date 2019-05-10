require 'grid'
require 'sidewinder'

grid = Grid.new(4, 4)

SideWinder.on(grid)

# ACSII text drawing
puts "\n"
puts grid

# PNG drawing
img = grid.to_png
img.save 'images/maze.png'
