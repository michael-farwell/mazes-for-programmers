require 'colored_grid'
require 'wilsons'

grid = ColoredGrid.new(20, 20)
Wilsons.on(grid)

middle = grid[grid.rows / 2, grid.columns / 2]
grid.distances = middle.distances

filename = 'images/wilsons_colored.png'
grid.to_png.save(filename)
puts "saved to #{filename}"
