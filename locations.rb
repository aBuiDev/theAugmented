# Game Locations
module GameLocations

    # Location: Rendezvuos Start
    def self.location_rendezvuos_start(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Rendezvous".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You arrive at the rendezvuos point and there is no sign of Henderson."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "As the ferry's engine fades into the distance, eerie silence begins to grow."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "It has become apparent that this situation has grown even more sinister."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You decide to..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        # Interface Controls --------------------------------------------------------------------
        InterfaceElements.rendezvous_game_controls(new_player)
    end



    # Location: Sewers
    def self.location_sewers(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Sewers".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You venture into the sewers in search of your brother, besides the sound of your footsteps and"
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
        puts "The Sewers"
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You venture into the sewers in search of your brother, besides the sound of your footsteps and"
        puts "a faint dripping of water, you are shrouded by darkness and a suffocating silence..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Optical CLA Night Vision Augmentation |".green} and scan your surroundings..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "A giant mutated and augmented sewer rat lunges towards you, it's red glowing eyes peircing into your soul"
        puts "with pure ferosity, as it flys towards you..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You activate #{"| Optical Photon Beam Augmentation |".red}, glowing beams shoot out of your augmented eyes,"
        puts "piercing both the creatures brain, heart and breaking the creature's spine as the beam exits the creatures back,"
        puts "hitting the sewer ceiling and leaving a red glowing mark."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "As the heat of your glowing eyes dissipate and the surrounding area fills with smoke from burning flesh and metal."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You move towards the creature and inspect it's body..."
        puts InterfaceElements::INVISIBLE_SEPARATOR

        # Interface Controls --------------------------------------------------------------------
        InterfaceElements.sewers_game_controls(new_player)
    end

end

