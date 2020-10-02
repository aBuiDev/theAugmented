module GameLocations
    # Location: Liberty Statue Head  ----------------------------------------------------------------------------------- |
    def self.liberty_statue_head(new_player)
        InterfaceElements.clear
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
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Upon your landing, you activate #{"| Eagle Eye Vision Augmentation |".green}"
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "and scan the surrounding area from this vantage point."
        sleep 1
        Animations.eagle_vision_scanner
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
        puts "Upon your landing, you activate #{"| Eagle Eye Vision Augmentation |".green}"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "and scan the surrounding area from this vantage point."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "#{"| Eagle Eye Vision Augmentation |".green} locks onto Henderson!,"
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "who is engaged in an earth-shattering augmented battle with Terrorist Commander Hermes Himler..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "an extremely brutal and ultra-augmented enemy of the world."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "It is rumoured that only 35% of his brain remains human."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        # Interface Controls --------------------------------------------------------------------
        prompt = TTY::Prompt.new
        continue_only = [
            {name: 'Continue', value: 1},
        ]
        continue_command = prompt.select("Press Continue When Ready:".light_cyan, continue_only)
        # Control Conditionals ------------------------------------------------------------------
        case continue_command
        when 1
            GameLocations.liberty_statue_head_part_two(new_player)
        end
        InterfaceElements.statue_head_game_controls(new_player)
    end
    
    # Location: Liberty Statue Head Game Over Part Two
    def self.liberty_statue_head_part_two(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Henderson is also a #{new_player.class_name.light_cyan} class, super-agent..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "however, he alone cannot defeat Terrorist Commander Hermes Himler..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "At least two of you, heavy weaponry and pure grit will be needed to defeat Himler."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You hope that the weapons you are carrying at the moment are enough..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "you have no other option but to aid Henderson."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You activate #{"| Nano Teleportation Augmentation |".light_cyan}"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        # Interface Controls --------------------------------------------------------------------
        prompt = TTY::Prompt.new
        continue_only = [
            {name: 'Continue', value: 1},
        ]
        continue_command = prompt.select("Press Continue When Ready:".light_cyan, continue_only)
        # Control Conditionals ------------------------------------------------------------------
        case continue_command
        when 1
            GameLocations.liberty_statue_head_part_three(new_player)
        end
    end

    # Location: Liberty Statue Head Part Three
    def self.liberty_statue_head_part_three(new_player)
        InterfaceElements.clear
        Animations.alert_animation
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Upon engaging #{"| Nano Teleportation Augmentation |".light_cyan}..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your systems alert you to a #{"stealth attack".red}!"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You instantly activate #{"| Titan Shield Augmentation |".green} and swiftly turn around to see..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Terrorist Sub-Commander Helana Hellspawn materialise in front of you..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "a beautiful assassin augmented to output death."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "As her cloaking augmentation disengages, you realise the GEP Gun you had picked up from the mutated"
        puts "and augmented sewer rat had shielded you from what would have been an instant kill stealth attack."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        # Interface Controls --------------------------------------------------------------------
        prompt = TTY::Prompt.new
        continue_only = [
            {name: 'Continue', value: 1},
        ]
        continue_command = prompt.select("Press Continue When Ready:".light_cyan, continue_only)
        # Control Conditionals ------------------------------------------------------------------
        case continue_command
        when 1
            GameLocations.liberty_statue_head_part_four(new_player)
        end
    end

    # Location: Liberty Statue Head Game Over Part Four
    def self.liberty_statue_head_part_four(new_player)
        InterfaceElements.clear
        Animations.alert_animation
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Fueled by both pure rage and desperation to save your brother, you..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "activate #{"| Nano Arm Blade Augmentation |".green}!"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "activate #{"| Enhanced Speed Augmentation |".green}!"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "activate #{"| Micro-fibral Muscle Augmentation |".green}!"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "With an incredibly swift motion - enhanced by augmentations - you launch a powerful augmented melee attack..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "launching Terrorist Sub-Commander Helena Hellspawn into the air..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "her life fading away before her body hits the ground, rolling to towards the edge before being caught by a"
        puts "liberty crown spike."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "As her body lays lifeless over the edge of the crown, you move towards it..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        InterfaceElements.statue_head_game_controls(new_player)
    end
        



    # Location: Liberty Statue Head Game Over -------------------------------------------------------------------------- |
    def self.liberty_statue_head_game_over(new_player)
        InterfaceElements.clear
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
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Upon your landing, you activate #{"| Eagle Eye Vision Augmentation |".green}"
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "and scan the surrounding area from this vantage point."
        sleep 1
        Animations.eagle_vision_scanner
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
        puts "Upon your landing, you activate #{"| Eagle Eye Vision Augmentation |".green}"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "and scan the surrounding area from this vantage point."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "#{"| Eagle Eye Vision Augmentation |".green} locks onto Henderson!,"
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "who is engaged in an earth-shattering augmented battle with Terrorist Commander Hermes Himler..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "an extremely brutal and ultra-augmented enemy of the world."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "It is rumoured that only 35% of his brain remains human."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        # Interface Controls --------------------------------------------------------------------
        prompt = TTY::Prompt.new
        continue_only = [
            {name: 'Continue', value: 1},
        ]
        continue_command = prompt.select("Press Continue When Ready:".light_cyan, continue_only)
        # Control Conditionals ------------------------------------------------------------------
        case continue_command
        when 1
            GameLocations.liberty_statue_head_game_over_part_two(new_player)
        end
    end

    # Location: Liberty Statue Head Game Over Part Two
    def self.liberty_statue_head_game_over_part_two(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Henderson is also a #{new_player.class_name.light_cyan} class, super-agent..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "however, he alone cannot defeat Terrorist Commander Hermes Himler..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "At least two of you, heavy weaponry and pure grit will be needed to defeat Himler."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You have no weapons..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "however, you have no other option but to aid Henderson."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You activate #{"| Nano Teleportation Augmentation |".light_cyan}"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        # Interface Controls --------------------------------------------------------------------
        prompt = TTY::Prompt.new
        continue_only = [
            {name: 'Continue', value: 1},
        ]
        continue_command = prompt.select("Press Continue When Ready:".light_cyan, continue_only)
        # Control Conditionals ------------------------------------------------------------------
        case continue_command
        when 1
            GameLocations.liberty_statue_head_game_over_part_three(new_player)
        end
    end

    # Location: Liberty Statue Head Game Over Part Two
    def self.liberty_statue_head_game_over_part_three(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Liberty Statue Head".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Upon engaging #{"| Nano Teleportation Augmentation |".light_cyan}..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your systems are abruptly shut down and you fall heavily in a clanking slump..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "you feel as though the weight of your augmented body is being dragged to the core of"
        puts "the earth by gravity."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You lay paralyzed as your systems begin to shut down..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "As the power drains away from your electronics, so does the life force of whatever little"
        puts "is still human in your body..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Before your vision fades, you see Terrorist Sub-Commander, Helena Hellspawn..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        # Interface Controls --------------------------------------------------------------------
        prompt = TTY::Prompt.new
        continue_only = [
            {name: 'Continue', value: 1},
        ]
        continue_command = prompt.select("Press Continue When Ready:".light_cyan, continue_only)
        # Control Conditionals ------------------------------------------------------------------
        case continue_command
        when 1
            InterfaceElements.game_over
        end
    end



    # Location: Liberty Statue Head Visited  --------------------------------------------------------------------------- |
    def self.liberty_statue_head_visited(new_player)
        InterfaceElements.clear
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
        puts "You can feel the impact of their war resonate up the liberty tower for which you stand."
        InterfaceElements.statue_head_game_controls(new_player)
    end
end