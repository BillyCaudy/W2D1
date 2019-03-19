require_relative 'board.rb'

new_board = Board.new(nil,nil)

new_board.fill_rows

new_board.render

new_board.move_piece(:yellow,[2,0],[2,1])

new_board.move_piece(:yellow,[0,0],[2,0])

new_board.render

new_board.move_piece(:yellow,[2,0],[7,7])

new_board.render
