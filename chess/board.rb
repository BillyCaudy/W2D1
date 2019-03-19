require_relative 'piece.rb'
class Board
    attr_reader :rows
    def initialize(rows, sentinel)
        @rows = Array.new(8) {Array.new(8)} #2d array
        @sentinel = sentinel #NullPiece class
    end

    def [](pos)
        x, y = pos
        @rows[x][y]
    end

    def []=(pos, val)
        x, y = pos
        @rows[x][y] = val
    end

    def move_piece(color, start_pos, end_pos)
        return if start_pos == end_pos
        begin
            raise NullPieceError, "No piece here!" if self[start_pos].is_a?(NullPiece)
            
        rescue NullPieceError => exception
            p "#{exception.message}"
        end

        self[end_pos] = self[start_pos]   
        self[start_pos] = NullPiece.new  
    end

    def valid_pos?(pos)
    end

    def add_piece(piece, pos)
    end

    def checkmate?(color)
    end

    def in_check?(color)
    end

    def find_king(color)
    end

    def pieces
    end

    def dup
    end

    def move_piece!(color, start_pos, end_pos)
    end

    #private

    def fill_rows
        (0..1).each do |row| #white side
            (0..7).each { |col| self[[row, col]] = Piece.new(:white,self,[row,col]) }
        end
        (2..5).each do |row| #empty
            (0..7).each { |col| self[[row, col]] = NullPiece.new }
        end
        (6..7).each do |row| #black side
            (0..7).each { |col| self[[row, col]] = Piece.new(:black,self,[row,col]) }
        end
        nil
    end

    def render
        @rows.each do |row|
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

class NullPieceError < StandardError ; end
