# Game Locations
module GameLocations

    # Location: Rendezvuos Start
    def self.location_rendezvuos_start(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Rendezvous"
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
        InterfaceElements.game_controls(new_player)
    end



    # Location: Sewers
    def self.location_rendezvuos_start(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Sewers"
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
        puts "a faint dripping of water, you are shrouded by darkness and suffocating silence..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Optical CLA Night Vision Augmentation |".green} and scan your surroundings..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "A giant mutated and augmented sewer rat lunges towards you, it's red glowing eyes peircing into your soul"
        puts "with pure ferosity, as it flys towards you..."
        sleep 1
        puts "You activate #{"| Optical Photon Beam Augmentation |".red}, glowing beams shoot out of your augmented eyes,"
        puts "piercing both the creatures brain, heart and breaking the creature's spine as the beam exits the creatures back,"
        puts "hitting the sewer ceiling and leaving a red glowing mark."
        sleep 1
        puts "As the heat of your glowing eyes dissipate and the surrounding area fills with smoke from burning flesh and metal."
        sleep 1
        puts "You move towards the creature and inspect it's body..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        # Interface Controls --------------------------------------------------------------------
        prompt = TTY::Prompt.new
        game_controls = [
            {name: 'Loot Mutated Sewer Rat Body', value: 1}
            {name: 'Visit: Rendezvous', value: 2},
            {name: 'Visit: Liberty Statue Head', value: 3},
            {name: 'Visit: Statue Entrance', value: 4},
            {name: 'View: Inventory Items', value: 5},
            {name: 'View: Weapons', value: 6},
        ]
        continue_command = prompt.select("Game Controls:", game_controls)

        case continue_command
        when 1

        when 2

        when 3

        when 4
            puts InterfaceElements::INVISIBLE_SEPARATOR
            new_player.view_inventory
            puts InterfaceElements::INVISIBLE_SEPARATOR
            game_controls(new_player)
            puts InterfaceElements::INVISIBLE_SEPARATOR
        when 5
            puts InterfaceElements::INVISIBLE_SEPARATOR
            new_player.view_weapons
            puts InterfaceElements::INVISIBLE_SEPARATOR
            game_controls(new_player)
            puts InterfaceElements::INVISIBLE_SEPARATOR
        end
    end

end

