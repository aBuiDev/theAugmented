require 'rspec'
require_relative '../../classes.rb'

RSpec.describe MachineTank do
    it 'Should create' do
        new_player = MachineTank.new("Andrew")
        expect(new_player.weapons).to eq [
            {weapon_name: "Sawed Off Shotgun", ammo: 10, damage: 50},
        ]
    end
end

RSpec.describe CyberAssassin do
    it 'Should create' do
        new_player = CyberAssassin.new("Andrew")
        expect(new_player.weapons).to eq [
            {weapon_name: "Nano Blade", ammo: 0, damage: 100}
        ]
    end
end





