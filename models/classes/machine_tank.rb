# Dependencies
require 'terminal-table'
require_relative './player_class.rb'



# Machine Tank
class MachineTank < PlayerClass
    def initialize(player_name)
        super(player_name)
        @class_name = "machine tank"
        @class_caller << "machine tank"
        @inventory = [
            health_pack = {item_name: "20HP+ Health Pack", health_amount: 20, quantity: 1},
        ]
        @inventory.each do | item |
            @inventory_row << [item[:item_name], item[:quantity]]
        end
        @weapons = [
            {weapon_name: "Sawed Off Shotgun", ammo: 10, damage: 50},
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
            {move: "| Mecha Force Charge Augmentation |", damage: 20, energy: 25},
            {move: "| Nano Arm Blade Augmentation |", damage: 20, energy: 25},
            {move: "| Titan Shield Augmentation |", damage: 0, energy: 25}
        ]
    end

    def class_name_caller
        @class_caller
    end

end