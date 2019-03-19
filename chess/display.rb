require_relative 'cursor.rb'

class Display
    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], @board) 
    end

     def render
        @board.rows.each do |row|
            row.each do |piece|
                color = piece.color || :nulll
                print "#{color} "
            end
            puts
        end
        puts
        nil
    end
end