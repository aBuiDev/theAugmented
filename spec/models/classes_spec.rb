require 'rspec'
require_relative '../../classes.rb'

RSpec.describe MachineTank(name) do
    it 'Should create new player' do
        new_player = MachineTank.new("Andrew")
        expect(new_player).new("Andrew")
    end
end




