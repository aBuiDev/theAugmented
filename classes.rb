# Dependencies
require 'terminal-table'


# Player Classes
class PlayerClass
    attr_accessor :name, :inventory, :inventory_row, :weapons, :weapon_row, :weapon_name, :quest_items, :hit_points, :power_level
    attr_reader :class_name, :augmentations
    def initialize(player_name)
        @class_name = class_name
        @name = player_name
        @inventory = []
        @inventory_row = []
        @weapons = []
        @weapon_row = []
        @weapon_name = []
        @quest_items = []
        @hit_points = 100
        @power_level = 100
        @augmentations = []
    end

    def view_inventory
        table = Terminal::Table.new :headings => ['Item', 'Quantity'], :rows => @inventory_row
        puts table
    end

    def view_weapons
        table = Terminal::Table.new :headings => ['Weapon', 'Ammo'], :rows => @weapon_row
        puts table
    end

    def loot_item(item)
        @inventory_row << [item[:item_name], item[:quantity]]
    end

    def pickup_weapon(weapon)
        @weapon_row << [weapon[:weapon_name], weapon[:ammo]]
    end

    def add_weapon(weapon)
        @weapons.append(weapon) 
    end

    def add_weapon_name(weapon)
        @weapon_name << weapon[:weapon_name]
    end

end


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


# Machine Tank
class MachineTank < PlayerClass
    def initialize(player_name)
        super(player_name)
        @class_name = "machine tank"
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

end