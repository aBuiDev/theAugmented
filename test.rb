
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
    attr_reader :name
    def initialize(player_name)
        super(player_name)
    end
end

# Cyber Assassin
class CyberAssassin < PlayerClass
    def initialize(player_name)
        super
    end
end

newMachineTank = MachineTank.new("Andrew")
puts newMachineTank.name