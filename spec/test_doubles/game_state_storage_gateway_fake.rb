class GameStateStorageGatewayFake
  attr_accessor :game_state

  def save(game)
    @game_state = game
  end

  def retrieve
    @game_state
  end
end