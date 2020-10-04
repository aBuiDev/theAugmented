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
end