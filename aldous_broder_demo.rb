# frozen_string_literal: true

require 'grid'
require 'aldous_broder'

grid = Grid.new(20, 20)
AldousBroder.on(grid)

file_name = 'images/aldous_broder.png'
grid.to_png.save(file_name)
puts "saved to #{file_name}"
