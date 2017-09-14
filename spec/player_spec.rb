require 'player'

describe Player do
subject(:player) {described_class.new('Marcus')}

  it 'returns the player name' do
    expect(player.name).to eq 'Marcus'
  end
end
