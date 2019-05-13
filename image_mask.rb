require 'mask'
require 'masked_grid'
require 'recursive_backtracker'

abort 'Please specify a PNG file to use as a template' if ARGV.empty?
mask = Mask.from_png(ARGV.first)
grid = MaskedGrid.new(mask)
RecursiveBacktracker.on(grid)

filename = 'images/masked_by_image.png'
grid.to_png(cell_size: 5).save(filename)
puts "saved to #{filename}"
