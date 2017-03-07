#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '/Users/sarah/Development/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/Users/sarah/Development/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/Users/sarah/Development/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/Users/sarah/Development/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/04.mp3',
# "Wolf" => '/Users/sarah/Development/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/05.mp3',
# "Blue" => '/Users/sarah/Development/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/Users/sarah/Development/code/labs/jukebox-cli-web-031317/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  my_songs.each_key {|song| puts song}
end


def play(my_songs)
  puts "Please enter a song name:"
  user_choice = gets.chomp
  if my_songs.include?(user_choice)
    file_path = my_songs[user_choice]
    system "open #{file_path}"
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
    help
  
  loop do
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      else
        "Invalid input, please try again."
    end
  end
end
