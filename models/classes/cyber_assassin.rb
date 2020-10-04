# Dependencies
require 'terminal-table'
require_relative './player_class.rb'


# Cyber Assassin
class CyberAssassin < PlayerClass
    def initialize(player_name)
        super(player_name)
        @class_name = "cyber assassin"
        @inventory = [
            power_pack = {item_name: "100%+ Power Charge Pack", charge_amount: 100, quantity: 1}
        ]
        @inventory.each do | item |
            @inventory_row << [item[:item_name], item[:quantity]]
        end
        @weapons = [
            {weapon_name: "Nano Blade", ammo: "N/A", damage: 100},
        ]
        @weapons.each do | weapon |
            @weapon_row << [weapon[:weapon_name], weapon[:ammo]]
            @weapon_name << [weapon[:weapon_name]]
        end
        @hit_points = 0
        @power_level = 0
        @augmentations = []
    end

    def view_inventory
        super
    end

    def view_weapons
        super
    end

    def loot_item(item)
        super
    end

    def pickup_weapon(weapon)
        super
    end

    def add_weapon(weapon)
        super
    end

    def add_weapon_name(weapon)
        super
    end

    def hit_points
        @hit_points = 100
    end

    def attacks
        @augmentations = [
            {move: "| Gravity Force Augmentation |", damage: 20, energy: 25},
            {move: "| Nano Arm Blade Augmentation |", damage: 20, energy: 25},
            {move: "| Titan Shield Augmentation |", damage: 0, energy: 25}
        ]
    end

end