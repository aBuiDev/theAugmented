module GameLocations
     # Location: Statue Entrance Game Over ----------------------------------------------------------------------------- |
     def self.location_statue_entrance_game_over(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You materialise at the statue entrance where you find yourself in the middle of a massively destructive augmented battle!"
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Your brother is in battle with Terrorist Commander Hermes Himler, a brutal mercenary and ultra-augmented enemy of the world."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Henderson is almost defeated, scans are showing most of his systems are critical..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Your brother needs you... the world needs you... Hermes must be defeated..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Your shock turns into rage... you fire up your weapon systems and go into augmented battle mode..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You re-engage #{"| Nano Teleporation Augmentation |".green} and materialise next to your injured brother..." 
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
            GameLocations.location_statue_entrance_game_over_part_two(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Two 
    def self.location_statue_entrance_game_over_part_two(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Psionic Matter Charge Augmentation |".green}..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "but before you can engage the augmentation..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "."
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
            GameLocations.location_statue_entrance_game_over_part_three(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Three
    def self.location_statue_entrance_game_over_part_three(new_player)
        InterfaceElements.clear
        Animations.alert_animation
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "but before you can engage the augmentation..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Hermes Himler executes a powerful #{"| Gravity Slam Augmentation |".red}..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "lifting everything in the area, including you and your brother into the air and slamming"
        puts "everything and everyone onto the ground, generating a massive shockwave..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "using #{"| Electron Teleporation Augmentation |".red} Hermes Himler materialises between you and your"
        puts "critically damaged and unconscious brother..."
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
            GameLocations.location_statue_entrance_game_over_part_four(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Four
    def self.location_statue_entrance_game_over_part_four(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Standing between you and your brother, who only just regained consciousness..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Hermes Himler looks down at you both..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "his arms tranforming into thermal rail cannons using #{"| Thermal Rail Cannon Augmentation |".red}..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "with both arms pointed directly at the center of your visions..."
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
            GameLocations.location_statue_entrance_game_over_part_five(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Five
    def self.location_statue_entrance_game_over_part_five(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "...without a word..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "...it all goes to silence..."
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
            InterfaceElements.game_over
        end
    end



    # Location: Statue Entrance GEP Fight ------------------------------------------------------------------------------ |
    def self.location_statue_entrance_gep(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You materialise at the statue entrance where you find yourself in the middle of a massively destructive augmented battle!"
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Your brother is in battle with Terrorist Commander Hermes Himler, a brutal mercenary and ultra-augmented enemy of the world."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Henderson is almost defeated, scans are showing most of his systems are critical..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Your brother needs you... the world needs you... Hermes must be defeated..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Your shock turns into rage... you fire up your weapon systems and go into augmented battle mode..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You re-engage #{"| Nano Teleporation Augmentation |".green} and materialise next to your injured brother..." 
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
            GameLocations.location_statue_entrance_gep_part_two(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Two 
    def self.location_statue_entrance_gep_part_two(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Psionic Matter Charge Augmentation |".green}..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "but before you can engage the augmentation..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "."
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
            GameLocations.location_statue_entrance_gep_part_three(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Three
    def self.location_statue_entrance_gep_part_three(new_player)
        InterfaceElements.clear
        Animations.alert_animation
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "but before you can engage the augmentation..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Hermes Himler executes a powerful #{"| Gravity Slam Augmentation |".red}..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "lifting everything in the area, including you and your brother into the air and slamming"
        puts "everything and everyone onto the ground, generating a massive shockwave..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "using #{"| Electron Teleporation Augmentation |".red} Hermes Himler materialises between you and your"
        puts "critically damaged and unconscious brother..."
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
            GameLocations.location_statue_entrance_gep_part_four(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Four
    def self.location_statue_entrance_gep_part_four(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Standing between you and your brother, who only just regained consciousness..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Hermes Himler looks down at you both..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "his arms tranforming into thermal rail cannons using #{"| Thermal Rail Cannon Augmentation |".red}..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "with both arms pointed directly at the center of your visions..."
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
            GameLocations.location_statue_entrance_gep_part_five(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Five
    def self.location_statue_entrance_gep_part_five(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "... without a word ..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "... it all goes to silence ..."
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
            InterfaceElements.game_over
        end
    end



    # Location: Statue Entrance Sniper Fight --------------------------------------------------------------------------- |
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



    # Location: Statue Entrance GEP Sniper Fight ----------------------------------------------------------------------- |
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