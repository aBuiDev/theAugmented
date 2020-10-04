require 'rspec'
require_relative '../../models/classes/machine_tank.rb'
require_relative '../../models/classes/player_class.rb'
require_relative '../../models/classes/cyber_assassin.rb'


# Testing that a Machine Tank class is generated with all object inside the class initialising.
RSpec.describe MachineTank do
    it 'Should create' do
        new_player = MachineTank.new("Andrew")
        expect(new_player.weapons).to eq [
            {weapon_name: "Sawed Off Shotgun", ammo: 10, damage: 50},
        ]
    end
end

# Testing that a Cyber Assassin class is generated with all object inside the class initialising.
RSpec.describe CyberAssassin do
    it 'Should create' do
        new_player = CyberAssassin.new("Andrew")
        expect(new_player.weapons).to eq [
            {weapon_name: "Nano Blade", ammo: "N/A", damage: 100}
        ]
    end
end





