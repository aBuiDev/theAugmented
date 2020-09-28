# Dependencies
require 'time'
require 'colorize'
require 'tty-prompt'
require 'terminal-table'
require_relative './animations.rb'
require_relative './game_start.rb'
require_relative './interface.rb'



# Player Classes
class PlayerClass
    attr_accessor :name, :inventory, :weapons, :quest_items, :hit_points, :power_level
    attr_reader :class_name 
    def initialize(player_name)
        @class_name = class_name
        @name = player_name
        @inventory = []
        @inventory_row = []
        @weapons = []
        @weapon_row = []
        @quest_items = []
        @hit_points = 100
        @power_level = 100
        @inventory_row = []
        @weapon_row = []
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
end



# Machine Tank
class MachineTank < PlayerClass
    def initialize(player_name)
        super(player_name)
        @class_name = "machine tank"
        @inventory = [
            health_pack = {item_name: "20HP+ Health Pack", health_amount: 20, quantity: 1},
            power_pack = {item_name: "100%+ Power Charge Pack", charge_amount: 100, quantity: 0}
        ]
        @inventory.each do | item |
            @inventory_row << [item[:item_name], item[:quantity]]
        end
        @weapons = [
            sawed_off_shotgun = {weapon_name: "Sawed Off Shotgun", ammo: 10, damange: 50},
        ]
        @weapons.each do | weapon |
            @weapon_row << [weapon[:weapon_name], weapon[:ammo]]
        end
        @hit_points = 200
        @power_level = 100
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

end



# new_tank = MachineTank.new("Andrew")
# new_tank.view_inventory
# new_tank.view_weapons



# Cyber Assassin
class CyberAssassin < PlayerClass
    def initialize(player_name)
        super(player_name)
        @class_name = "cyber assassin"
        @inventory = [
            health_pack = {item_name: "20HP+ Health Pack", health_amount: 20, quantity: 0},
            power_pack = {item_name: "100%+ Power Charge Pack", charge_amount: 100, quantity: 1}
        ]
        @weapons = [
            nano_blade = {weapon_name: "Nano Blade", ammo: 0, damange: 100}
        ]
        @hit_points = 100
        @power_level = 200
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

end



# new_assassin = CyberAssassin.new("Andrew")
# new_assassin.view_inventory
# new_assassin.view_weapons



# Bosses 
class HermesHimler
    attr_reader :boss_name
    def self.boss_name
        boss_name = "Hermes Himler"
    end
end

player = CyberAssassin.new("Andrew")
puts player.weapons[0][:weapon_name].include? "GEP Gun"