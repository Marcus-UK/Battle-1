require 'player'

describe Player do
subject(:marcus) {Player.new('Marcus')}
subject(:james) {Player.new('James')}

  describe '# name' do
    it 'returns the player name' do
      expect(marcus.name).to eq 'Marcus'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(james.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end


  describe '#receives_damage' do
    it 'reduced the players hit points' do
      expect { james.receive_damage }.to change { james.hit_points }.by(-10)
    end
  end
end
