class SideWinder

  def self.on(grid)
    grid.each_row do |row|
      run = []

      row.each do |cell|
        run << cell

        should_close_out = cell.east.nil? || (!cell.north.nil? && rand(2) == 0)

        if should_close_out
          member = run.sample
          member.link(member.north) if member.north
          run.clear
        else
          cell.link(cell.east)
        end
      end
    end

    grid
  end
end
