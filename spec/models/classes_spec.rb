require 'rspec'
require_relative '../../classes.rb'

RSpec.describe MachineTank do
    it 'Should create' do
        new_player = MachineTank.new("Andrew")
    end
end

RSpec.describe CyberAssassin do
    it 'Should create' do
        new_player = CyberAssassin.new("Andrew")
    end
end




