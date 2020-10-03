require_relative './models/boss_fight/boss_fight.rb'



module GameLocations
     # Location: Statue Entrance Game Over ----------------------------------------------------------------------------- |
     def self.location_statue_entrance_game_over(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You materialise at the statue entrance where you find yourself in the middle of a massively destructive augmented battle!"
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
        sleep 1
        puts "You materialise at the statue entrance where you find yourself in the middle of a massively destructive augmented battle!"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your brother is in battle with Terrorist Commander Hermes Himler, a brutal mercenary and ultra-augmented enemy of the world."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Henderson is almost defeated, scans are showing most of his systems are critical..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your brother needs you... the world needs you... Hermes must be defeated..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your shock turns into rage... you fire up your weapon systems and go into augmented battle mode..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
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
        puts "In an act of desperation you take out the #{"GEP Gun".light_cyan} you picked up"
        puts "from the mutated and augmented sewer rat..."
        sleep 3
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you take aim and fire 3 guided explosive projectile at Hermes Himler..."
        sleep 1
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        Animations.rocket_launch
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "In an act of desperation you take out the #{"GEP Gun".light_cyan} you picked up"
        puts "from the mutated and augmented sewer rat..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you take aim and fire 3 guided explosive projectile at Hermes Himler..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "without flinching, Terrorist Commander Hermes Himler, easily deflects the projectile..."
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
            GameLocations.location_statue_entrance_gep_part_six(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Six
    def self.location_statue_entrance_gep_part_six(new_player)
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
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You materialise at the statue entrance where you find yourself in the middle of a massively destructive augmented battle!"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your brother is in battle with Terrorist Commander Hermes Himler, a brutal mercenary and ultra-augmented enemy of the world."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Henderson is almost defeated, scans are showing most of his systems are critical..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your brother needs you... the world needs you... Hermes must be defeated..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your shock turns into rage... you fire up your weapon systems and go into augmented battle mode..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
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
            GameLocations.location_statue_entrance_sniper_part_two(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Two 
    def self.location_statue_entrance_sniper_part_two(new_player)
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
            GameLocations.location_statue_entrance_sniper_part_three(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Three
    def self.location_statue_entrance_sniper_part_three(new_player)
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
            GameLocations.location_statue_entrance_sniper_part_four(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Four
    def self.location_statue_entrance_sniper_part_four(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "In an act of desperation you take out the #{"GEP Gun".light_cyan} you picked up"
        puts "from the mutated and augmented sewer rat..."
        sleep 3
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you activate #{"| Nano Teleportation Augmentation |".light_cyan} and materialise on"
        puts "top of the statue entrance..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you take aim at his head and pull the trigger..."
        sleep 1
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        Animations.sniper_shot
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "In an act of desperation you take out the #{"GEP Gun".light_cyan} you picked up"
        puts "from the mutated and augmented sewer rat..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you activate #{"| Nano Teleportation Augmentation |".light_cyan} and materialise on"
        puts "top of the statue entrance..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you take aim at his head and pull the trigger..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Terrorist Commander Hermes Himler's head deflect the sniper round..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "he is too heavily augmented and armoured to take damage from the sniper shot..."
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
            GameLocations.location_statue_entrance_sniper_part_five(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Five
    def self.location_statue_entrance_sniper_part_five(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Hermes Himler activates #{"| Matter Pull Augmentation |".red} and pulls you from your location..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "hurling you into the air and purposely crashing you down next to your brother..."
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
            GameLocations.location_statue_entrance_sniper_part_six(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Six
    def self.location_statue_entrance_sniper_part_six(new_player)
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
            GameLocations.location_statue_entrance_sniper_part_seven(new_player)
        end
    end



    # Location: Statue Entrance Game Over Part Seven
    def self.location_statue_entrance_sniper_part_seven(new_player)
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



    # Location: Statue Entrance GEP Sniper Fight ----------------------------------------------------------------------- |
    def self.location_statue_entrance_gep_sniper(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You materialise at the statue entrance where you find yourself in the middle of a massively destructive augmented battle!"
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your brother is in battle with Terrorist Commander Hermes Himler, a brutal mercenary and ultra-augmented enemy of the world."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Henderson is almost defeated, scans are showing most of his systems are critical..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your brother needs you... the world needs you... Hermes must be defeated..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your shock turns into rage... you fire up your weapon systems and go into augmented battle mode..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
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
            GameLocations.location_statue_entrance_gep_sniper_part_two(new_player)
        end
    end



    # Location: Statue Entrance GEP Sniper Fight Part Two 
    def self.location_statue_entrance_gep_sniper_part_two(new_player)
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
            GameLocations.location_statue_entrance_gep_sniper_part_three(new_player)
        end
    end



    # Location: Statue Entrance GEP Sniper Fight Part Three
    def self.location_statue_entrance_gep_sniper_part_three(new_player)
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
            GameLocations.location_statue_entrance_gep_sniper_part_four(new_player)
        end
    end



    # Location: Statue Entrance GEP Sniper Fight Part Four
    def self.location_statue_entrance_gep_sniper_part_four(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You immediately recover, and initialise #{"| Anti-Matter Pulse Augmentation |".light_cyan} and"
        puts "#{"| Battery Shield Augmentation |".light_cyan}"
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You use #{"| Battery Shield Augmentation |".light_cyan} to place a force field around your unconscious brother and..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "release a massive shockwave using #{"| Anti-Matter Pulse Augmentation |".light_cyan}, causing Hermes Himler to take a step back"
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "and purposely hurtling your brother to a safe distance..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "you go into battle mode..."
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
            EpicBossFight.battle_time(new_player)
        end
    end



    # --- LOSE --------------------------------------------------------------------------------------------------------- |
    # Location: Statue Entrance GEP Sniper Lose Part One
    def self.location_statue_entrance_gep_sniper_lose_part_one(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Hermes Himler activates #{"| Matter Pull Augmentation |".red} and pulls you from your location..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "hurling you into the air and purposely crashing you down next to your brother..."
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
            GameLocations.location_statue_entrance_gep_sniper_lose_part_two(new_player)
        end
    end



    # Location: Statue Entrance GEP Sniper Lose Part Two
    def self.location_statue_entrance_gep_sniper_lose_part_two(new_player)
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
            GameLocations.location_statue_entrance_gep_sniper_lose_part_three(new_player)
        end
    end



    # Location: Statue Entrance GEP Sniper Lose Part Three
    def self.location_statue_entrance_gep_sniper_lose_part_three(new_player)
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


    # --- WIN ---------------------------------------------------------------------------------------------------------- |
    # Location: Statue Entrance GEP Sniper Win Part One
    def self.location_statue_entrance_gep_sniper_win_part_one(new_player)
        InterfaceElements.clear
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You activate #{"| Nano Teleportation Augmentation |".red} and material next to your brother who is slowly"
        puts "regaining consciousness."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "After witnessing all this destruction, being a part of it, and seeing your brother in this condition..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "rage, human emotion, and artificial adrenaline surge through your body and systems..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "You reach over to your brother and communicate via #{"| InfoLink Augmentation |".light_cyan}, the two of you:"
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
            GameLocations.location_statue_entrance_gep_sniper_win_part_two(new_player)
        end
    end



    # Location: Statue Entrance GEP Sniper Win Part Two
    def self.location_statue_entrance_gep_sniper_win_part_two(new_player)
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
            GameLocations.location_statue_entrance_gep_sniper_win_part_three(new_player)
        end
    end



    # Location: Statue Entrance GEP Sniper Win Part Three
    def self.location_statue_entrance_gep_sniper_win_part_three(new_player)
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





end