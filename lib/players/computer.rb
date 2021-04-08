module Players
    class Computer < Player

        def move(board)
            # #NEEDS TO MIMIC **INPUT - NOT INDEX
            options = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
            # options = board.cells.select {|c| c == " "}

            # input = options.sample
            corners = ["1", "3", "7", "9"]
            #player 1 - center square
            #player 2 - center square
            #move after first center - any corner
            #check for win combos
            
            
            if board.cells == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
                input = 5
            elsif board.cells[4] == " "
                input = 5

            elsif board.cells[0] == " " && board.cells[2] == " " && board.cells[6] == " " && board.cells[8] == " "
                input = corners.sample
            elsif 
                almost_win = Game::WIN_COMBINATIONS.detect {|wc| (board.cells[wc[0]] == "X" && board.cells[wc[1]] == "X" && board.cells[wc[2]] == " ") || (board.cells[wc[1]] == "X" && board.cells[wc[2]] == "X" && board.cells[wc[0]] == " ") || (board.cells[wc[2]] == "X" && board.cells[wc[0]] == "X" && board.cells[wc[1]] == " ")}            end
                fill = almost_win.detect {|aw| board.cells[aw[0]] == " " || board.cells[aw[1]] == " " || board.cells[aw[2]] == " "}
                input = fill + 1
            end

                # ["X","X"," "]
                #two of three full, block or win
                #select first array that applies to argument
                #find item without token --> move
                #may need to include clause for XXO rows for example... maybe && board.cells[2] == " ". easier way to iterate?
            
                # elsif
            #     game.WIN_COMBINATIONS.map do |wc|
            #          board.cells[wc[0]] && board.cells[wc[1]] == "O" || board.cells[wc[1]] && board.cells[wc[2]] == "O" || board.cells[wc[0]] && board.cells[wc[2]] == "O"
            
            #     end
            
        end
    end
end

#an array of indexes where the cell is full
#select board by X vs O
# ["X", "X", " ", " ", " ", " ", " ", " ", " "]
