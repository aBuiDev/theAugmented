require_relative '../../classes.rb'

RSpec.describe PlayerClass(name) do
    it 'Should respond to name' do
        player_class = PlayerClass.new(name)
        expect(player_class).to respond_to :name
    end
end

