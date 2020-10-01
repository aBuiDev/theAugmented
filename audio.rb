require 'ruby2d'

module Audio

    # Start Background Music
    def self.background_music_start
        song = Music.new('background_music.mp3')
        song.play
    end

    # Stop Background Music
    def self.background_music_stop
        song = Music.new('background_music.mp3')
        song.stop
        InterfaceElements.the_augmented_title
        InterfaceElements.game_menu
    end

end
