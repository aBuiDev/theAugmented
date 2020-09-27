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
end

# Machine Tank
class MachineTank < PlayerClass
    def initialize(player_name)
        super(player_name)
        @class_name = "MachineTank"
        @inventory = [
            {item: "20HP Health Pack", health_amount: 20, quantity: 1}
        ]
        @weapons = [
            {weapon_name: "Sawed Off Shotgun", ammo: 10, damange: 50}
        ]
        @hit_points = 200
        @power_level = 100
    end
end

# Cyber Assassin
class CyberAssassin < PlayerClass
    def initialize(player_name)
        super(player_name)
        @class_name = "CyberAssassin"
        @inventory = [
            {item: "100% Charge Power Pack", charge_amount: 100, quantity: 1}
        ]
        @weapons = [
            {weapon_name: "Nano Blade", ammo: 0, damange: 100}
        ]
        @hit_points = 100
        @power_level = 200
    end
end

newMachineTank = MachineTank.new("Andrew")
puts newMachineTank.inventory[0]
puts newMachineTank.class_name