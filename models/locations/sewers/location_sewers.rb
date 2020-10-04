module GameLocations
    # Location: Sewers
    def self.location_sewers(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Sewers".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You venture into the sewers in search of Kable, besides the sound of your footsteps and"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "a faint dripping of water, you are shrouded by darkness and suffocating silence..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You activate #{"| Optical CLA Night Vision |".green} augmentation and scan your surroundings..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        Animations.night_vision_scan
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        Animations.alert_animation
        puts InterfaceElements::INVISIBLE_SEPARATOR
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Sewers".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You venture into the sewers in search of Kable, besides the sound of your footsteps..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "and a faint dripping of water, you are shrouded by darkness and a suffocating silence..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Optical CLA Night Vision Augmentation |".green} and scan your surroundings..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "A giant mutated and augmented sewer rat lunges towards you, it's red glowing eyes peircing into your soul"
        puts "with pure ferosity, as it flys towards you..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You activate #{"| Optical Photon Beam Augmentation |".red}, glowing beams shoot out of your augmented eyes,"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "piercing both the creatures brain, heart and breaking the creature's spine as the beam exits the creatures back,"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "hitting the sewer ceiling and leaving a red glowing mark."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "As the heat of your glowing eyes dissipate and the surrounding area fills with smoke from burning flesh and metal."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You move towards the creature and inspect it's body..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        # Interface Controls --------------------------------------------------------------------
        InterfaceElements.sewers_game_controls(new_player)
    end



    # Location: Sewers Visited
    def self.location_sewers_visited(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Sewers".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You venture back into the sewers..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "the smell of burning flesh and melted metal is overwhelming..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "The mutated and augmented sewer rat lays lifeless where you left it..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "There is nothing more down here for you to investigate."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        # Interface Controls --------------------------------------------------------------------
        InterfaceElements.sewers_game_controls(new_player)
    end
end