# Dependencies
require 'terminal-table'


# Player Classes
class PlayerClass
    attr_accessor :name, :inventory, :inventory_row, :weapons, :weapon_row, :weapon_name, :quest_items, :hit_points, :power_level
    attr_reader :class_name, :class_caller, :augmentations
    def initialize(player_name)
        @class_name = class_name
        @class_caller = []
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