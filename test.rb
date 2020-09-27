module PlayerClasses

    class self.PlayerClass
        def initialize(player_name)
            @player_name = player_name
            @inventory = []
            @weapons = {}
            @quest_items = []
        end
    end

    # Mech Tank
    class self.MechTank < self.PlayerClass
        def initialize(player_name)
            super
        end
    end

    # Cyber Assassin
    class self.CyberAssassin < self.PlayerClass
        def initialize(player_name)
            super
        end
    end

end