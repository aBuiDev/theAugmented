# Dependencies
require 'time'
require 'colorize'
require 'tty-prompt'
require 'terminal-table'
require_relative './animations.rb'
require_relative './modules.rb'
require_relative './interface.rb'



# Player Classes
class PlayerClass
    attr_accessor :name, :inventory, :weapons, :quest_items, :hit_points, :power_level
    attr_reader :class_name 
    def initialize(player_name)
        @class_name = class_name
        @name = player_name
        @inventory = []
        @weapons = []
        @quest_items = []
        @hit_points = 100
        @power_level = 100
    end

    def view_inventory
        rows = []
        @inventory.each do | item |
            rows << [item[:item_name], item[:quantity]]
        end
        table = Terminal::Table.new :headings => ['Item', 'Quantity'], :rows => rows
        puts table
    end

    def view_weapons
        rows = []
        @weapons.each do | weapon |
            rows << [weapon[:weapon_name], weapon[:ammo]]
        end
        table = Terminal::Table.new :headings => ['Weapon', 'Ammo'], :rows => rows
        puts table
    end
end



# Machine Tank
class MachineTank < PlayerClass
    def initialize(player_name)
        super(player_name)
        @class_name = "machine tank"
        @inventory = [
            health_pack = {item_name: "20HP+ Health Pack", health_amount: 20, quantity: 1}
        ]
        @weapons = [
            sawed_off_shotgun = {weapon_name: "Sawed Off Shotgun", ammo: 10, damange: 50}
        ]
        @hit_points = 200
        @power_level = 100
    end

    def view_inventory
        super
    end

    def view_weapons
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



puts HermesHimler.boss_name