require 'growing_tree'
require 'grid'

def save(grid, filename)
  grid.to_png.save(filename)
  puts "saved to #{filename}"
end

grid = Grid.new(20, 20)
GrowingTree.on(grid, &:sample)
save(grid, "images/growing-tree-random.png")

grid = Grid.new(20, 20)
GrowingTree.on(grid, &:last)
save(grid, "images/growing-tree-last.png")

grid = Grid.new(20, 20)
GrowingTree.on(grid) { |list| (rand(2) == 0) ? list.last : list.sample }
save(grid, "images/growing-tree-mixed.png")