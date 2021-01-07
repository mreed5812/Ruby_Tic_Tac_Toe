# Controls the game play
class TicTacToe
    # initialize
        # set up the board
        # set up the players
        # assign the starting player

    # play
        # loop infinitely
            # call the board rendering method
            # ask for coordinates from the current player
            # break the loop IF the game is over
            # switch players

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
    # initialize
        # Set marker type (e.g. X or O)

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
        # set up blank data structure

    # render
        # loop through data structure
            # display an existing marker if any, else blank

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