require 'recursive_backtracker'
require 'weave_grid'

grid = WeaveGrid.new(20, 20)
RecursiveBacktracker.on(grid)
grid.braid(0.1)

filename = 'images/weave.png'
grid.to_png.save(filename)
puts "saved to #{filename}"

