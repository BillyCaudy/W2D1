class Piece
    attr_reader :color, :board, :pos
    def initialize(color, board, pos)
        @color = color #symbol
        @board = board #Board class
        @pos = pos #Array
    end


    def to_s
    end

    def inspect
     "object:#{self.object_id} color:#{@color} pos:#{@pos}"
    end

    def empty?
    end

    def valid_moves
    end

    def pos=(val)
    end

    def symbol
    end

    private

    def move_into_check?(end_pos)
    end
    
end

class NullPiece < Piece

    def initialize
    end

    def moves
    end

    def symbol
    end

end