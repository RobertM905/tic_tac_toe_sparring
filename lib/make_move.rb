# frozen_string_literal: true

class MakeMove
  def initialize(game_state_gateway:)
    @game_state_gateway = game_state_gateway
  end

  def execute(tile, player)
    raise TileInvalidError, 'Tile out of bounds' if tile >= 10

    old_board = @game_state_gateway.retrieve
    new_board = old_board
    new_board[tile - 1] = player if (new_board[tile - 1]).zero?
    @game_state_gateway.save(new_board)
    true
  end
end