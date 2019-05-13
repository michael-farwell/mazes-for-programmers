require 'recursive_backtracker'
require 'grid'

grid = Grid.new(20, 20)
RecursiveBacktracker.on(grid)

filename = 'images/recursive_backtracker.png'
grid.to_png.save(filename)
puts "saved to #{filename}"
