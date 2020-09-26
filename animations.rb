

# Repeating Dot Animation
begin
    def repeating_dot
        i = 1
        while i < 5
            dot_array = [" ", "."]
            dot_array.each do | dot |
                print dot + "\r"
                sleep 1
            end
            i += 1
        end
        the_augmented_title
    end
rescue
    puts "Error occured"
end



# Scanning Meter Animation
begin
    def attack_meter
        attack_meter_array = [
            "|1|..................".blue,
            "...|2|...............".blue,
            "......|3|............".blue,
            ".........|4|.........".blue,
            "............|5|......".blue,
            "...............|6|...".blue,
            "..................|7|".light_blue,
            "...............|6|...".light_blue,
            "............|5|......".light_blue,
            ".........|4|.........".light_blue,
            "......|3|............".light_blue,
            "...|2|...............".light_blue
        ]

        i = 1
        while i < 10
            attack_meter_array.each do | meter |
                print meter + "\r"
                sleep 0.25
            end
            i += 1
        end
    end
rescue
    puts "Error occured"
end