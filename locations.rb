

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
        sleep 1
        # Interface Controls --------------------------------------------------------------------
        InterfaceElements.rendezvous_game_controls(new_player)
    end



    # Location: Rendezvuos Visited
    def self.location_rendezvous_visited(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Rendezvous".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You return the to rendezvous area, there is still no sign of Henderson..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        # Interface Controls --------------------------------------------------------------------
        InterfaceElements.rendezvous_game_controls(new_player)
    end



    # Location: Rendezvuos Visited
    def self.location_rendezvous_visited_after_statue_head(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Rendezvous".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You return the to rendezvous area..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "however, Henderson is engaged in a massive battle with"
        puts "Terrorist Commander Hermes Himler at the statue entrance!"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
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
        puts "You venture into the sewers in search of your brother, besides the sound of your footsteps..."
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



    # Location: Liberty Statue Head
    def self.liberty_statue_head(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You activate #{"| Klipzpringer 00-8-00 Jump Augmentation |".green}..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "electro-magnetic-anti-gravity force builds up around your legs..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "the ground below you rumbles..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you launch yourself into the air, rising almost 100m above the statue of liberty's broken head..."
        sleep 4
        puts InterfaceElements::INVISIBLE_SEPARATOR
        Animations.jump_rise
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Klipzpringer 00-8-00 Jump Augmentation |".green}..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "electro-magnetic-anti-gravity force builds up around your legs..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "the ground below you rumbles..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you launch yourself into the air, rising almost 100m above the statue of liberty's broken head..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You use your CIA training and military precision to coordinate a perfect landing ontop of the "
        puts "statue's head."
        sleep 4
        Animations.jump_land
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Klipzpringer 00-8-00 Jump Augmentation |".green}..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "electro-magnetic-anti-gravity force builds up around your legs..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "the ground below you rumbles..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you launch yourself into the air, rising almost 100m above the statue of liberty's broken head..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You use your CIA training and military precision to coordinate a perfect landing ontop of the "
        puts "statue's head."
        InterfaceElements.statue_head_game_controls(new_player)
    end



    # Location: Liberty Statue Head Game Over
    def self.liberty_statue_head_game_over(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You activate #{"| Klipzpringer 00-8-00 Jump Augmentation |".green}..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "electro-magnetic-anti-gravity force builds up around your legs..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "the ground below you rumbles..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you launch yourself into the air, rising almost 100m above the statue of liberty's broken head..."
        sleep 4
        puts InterfaceElements::INVISIBLE_SEPARATOR
        Animations.jump_rise
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Klipzpringer 00-8-00 Jump Augmentation |".green}..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "electro-magnetic-anti-gravity force builds up around your legs..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "the ground below you rumbles..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you launch yourself into the air, rising almost 100m above the statue of liberty's broken head..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You use your CIA training and military precision to coordinate a perfect landing ontop of the "
        puts "statue's head."
        sleep 4
        Animations.jump_land
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Klipzpringer 00-8-00 Jump Augmentation |".green}..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "electro-magnetic-anti-gravity force builds up around your legs..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "the ground below you rumbles..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you launch yourself into the air, rising almost 100m above the statue of liberty's broken head..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You use your CIA training and military precision to coordinate a perfect landing ontop of the "
        puts "statue's head."
        InterfaceElements.statue_head_game_controls(new_player)
    end



    # Location: Liberty Statue Head Visited
    def self.liberty_statue_head_visited(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You activate #{"| Klipzpringer 00-8-00 Jump Augmentation |".green}..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "electro-magnetic-anti-gravity force builds up around your legs..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "the ground below you rumbles..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you launch yourself into the air, rising almost 100m above the statue of liberty's broken head..."
        sleep 4
        puts InterfaceElements::INVISIBLE_SEPARATOR
        Animations.jump_rise
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Klipzpringer 00-8-00 Jump Augmentation |".green}..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "electro-magnetic-anti-gravity force builds up around your legs..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "the ground below you rumbles..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you launch yourself into the air, rising almost 100m above the statue of liberty's broken head..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You use your CIA training and military precision to coordinate a perfect landing ontop of the "
        puts "statue's head."
        sleep 4
        Animations.jump_land
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Klipzpringer 00-8-00 Jump Augmentation |".green}..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "electro-magnetic-anti-gravity force builds up around your legs..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "the ground below you rumbles..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you launch yourself into the air, rising almost 100m above the statue of liberty's broken head..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You use your CIA training and military precision to coordinate a perfect landing ontop of the "
        puts "statue's head."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "There doesn't seem to be much to do here. Terrorist Sub-Commander Helena Hellspawn lays lifeless..."
        puts "half of her body hanging over one of the liberty crown's spikes"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your brother is still engaged in a deadly augmented battle with Hermes Himler..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You can feel the impact of their war resonate up the liberty tower of which you stand."
        InterfaceElements.statue_head_game_controls(new_player)
    end



    # Location: Statue Entrance Game Over
    def self.location_statue_entrance_game_over(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance Game Over..."
        sleep 1
        InterfaceElements.rendezvous_game_controls(new_player)
    end



    # Location: Statue Entrance GEP Fight
    def self.location_statue_entrance_gep(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance GEP Fight..."
        sleep 1
        InterfaceElements.rendezvous_game_controls(new_player)
    end



    # Location: Statue Entrance Sniper Fight
    def self.location_statue_entrance_sniper(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance Sniper Fight..."
        sleep 1
        InterfaceElements.rendezvous_game_controls(new_player)
    end



    # Location: Statue Entrance GEP Sniper Fight
    def self.location_statue_entrance_gep_sniper(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance GEP Sniper Fight..."
        sleep 1
        InterfaceElements.rendezvous_game_controls(new_player)
    end







end

