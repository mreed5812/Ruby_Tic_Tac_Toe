=begin
    
Set up the game initially
    Create a game board
    Create a couple players
Start the game loop
    Render the board
    Ask for and validate the current player's coordinates
    If the game should end
        Display the proper victory / draw message
        Stop looping
    Else
        Switch to the next player and keep looping
    
=end


# Controls the game play
class TicTacToe
    # initialize
    def initialize
        # set up the board
        @board = Board.new
        # set up the players
        @player_x = Player.new("Player X", :x, @board)
        @player_y = Player.new("Player Y", :y, @board)
        
        # assign the starting player
    end

    # play
    def play
        @board.render
        # loop infinitely
            # call the board rendering method
            # ask for coordinates from the current player
            # break the loop IF the game is over
            # switch players
    end
    # check_game_over
        # check_victory
        # check_draw

    # check_victory
        # IF board says current player's piece has
        # a winning_combination?
            # display a victory message

    # check_draw
        # IF Board says we've filled up
            # display a draw message


    # switch_players
        # PlayerX >> PlayerO or vice versa
end

# Manages all player-related functionality
class Player
    attr_accessor :name, :piece

    # initialize
    def initialize(name, marker, board)
        #set market type (e.g. X or O)
        @name = name
        @marker = marker
        @board = board
    end

    # get_coordinates
        # loop infinitely
            # ask_for_coordinates
            # IF validate_coordinates_format is true
                # IF piece can be placed on Board
                    # break the loop


    # ask_for_coordinates
        # Display message asking for coordinates
        # pull coordinates from command line

    # validate_coordinates_format
        # UNLESS coordinates are in the proper format
            # display error message

end

# Maintains game board state
class Board
    # initialize board
    def initialize
        # set up blank data structure
        #creates array of 3 arrays => [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
        @board = Array.new(3){Array.new(3)}
    end

    # render
    def render
        puts
        # loop through data structure
        @board.each do |row|
            row.each do |cell|
                # display an existing marker if any, else blank
                cell.nil? ? print("-") : print(cell.to_s)
            end
            puts
        end
        puts
    end

    # add_piece
        # IF piece_location_valid?
            # place piece
        # ELSE
            # display error message

    # piece_location_valid?
        # Is the placement within_valid_coordinates?
        # Are the piece coordinates_available?

    # within_valid_coordinates?
        # UNLESS piece coords are in the acceptible range
            # display an error message

    # coordinates_available?
        # UNLESS piece coords are not occupied
            # display error message

    # winning_combination?
        # is there a winning_diagonal?
        # or winning_vertical? 
        # or winning_horizontal? for that piece?

    # winning_diagonal?
        # check if specified piece has a triplet across diagonals

    # winning_vertical?
        # check if specified piece has a triplet across verticals

    # winning_horizontal?
        # check if specified piece has a triplet across horizontals

    # diagonals
        # return the diagonal pieces

    # verticals
        # return the vertical pieces

    # horizontals
        # return the horizontal pieces

    # full?
        # does every square contain a piece?
end

t = TicTacToe.new
t.play