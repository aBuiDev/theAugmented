
class PlayerClass
    def initialize(player_name)
        @name = player_name
        @inventory = []
        @weapons = {}
        @quest_items = []
    end
end

# Machine Tank
class MachineTank < PlayerClass
    attr_accessor :name, :inventory
    def initialize(player_name)
        super(player_name)
        @inventory = ["Gep Gun"]
    end
end

# Cyber Assassin
class CyberAssassin < PlayerClass
    def initialize(player_name)
        super
    end
end

newMachineTank = MachineTank.new("Andrew")
puts newMachineTank.inventory[0] = ".308"