

# Story Elements Module
module StoryElements

    def self.story_intro
        sleep 5
        puts "It is the year 2088"
        sleep 1
        puts "Advancements in technology has lead to an influx of a new generation of body modification, called augmentations.".light_cyan
        sleep 1
    end

    begin
        def self.the_augmented_title
            puts "----------------------------------------------------------------------------------------------------------"
            puts " "
            puts " "
            puts " "
            puts " "
            puts " "
            puts " "
            puts " "
            puts "████████╗██╗░░██╗███████╗  ░█████╗░██╗░░░██╗░██████╗░███╗░░░███╗███████╗███╗░░██╗████████╗███████╗██████╗░".blue
            puts "╚══██╔══╝██║░░██║██╔════╝  ██╔══██╗██║░░░██║██╔════╝░████╗░████║██╔════╝████╗░██║╚══██╔══╝██╔════╝██╔══██╗".light_blue
            puts "░░░██║░░░███████║█████╗░░  ███████║██║░░░██║██║░░██╗░██╔████╔██║█████╗░░██╔██╗██║░░░██║░░░█████╗░░██║░░██║".light_blue
            puts "░░░██║░░░██╔══██║██╔══╝░░  ██╔══██║██║░░░██║██║░░╚██╗██║╚██╔╝██║██╔══╝░░██║╚████║░░░██║░░░██╔══╝░░██║░░██║".light_cyan.blink
            puts "░░░██║░░░██║░░██║███████╗  ██║░░██║╚██████╔╝╚██████╔╝██║░╚═╝░██║███████╗██║░╚███║░░░██║░░░███████╗██████╔╝".blue
            puts "░░░╚═╝░░░╚═╝░░╚═╝╚══════╝  ╚═╝░░╚═╝░╚═════╝░░╚═════╝░╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═════╝░".blue
            puts " "
            puts " "
            puts "                                                By aBuiDev                                                "
            puts " "
            puts " "
            puts " "
            puts " "
            puts " "
            puts "----------------------------------------------------------------------------------------------------------"
        end
    rescue
        puts "Error occured"
    end

end



# Layout & Structuring Elements
module LayoutElements
    VISIBLE_SEPARATOR = "----------------------------------------"
    INVISIBLE_SEPARATOR = " "

    def LayoutElements.clear
        print "\e[2J\e[f"
    end

end


