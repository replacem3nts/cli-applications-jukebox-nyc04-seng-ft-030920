songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def input
  gets.strip
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|name, index| puts "#{index + 1}. #{name}"}
end

def valid_input(songs, cmd)
  if (1..9).include?(cmd.to_i)
    cmd.to_i - 1
  elsif songs.include?(cmd)
    songs.index(cmd)
  else
    false
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  cmd = valid_input(songs, input)
  if !cmd
    puts "Invalid input, please try again"
  else
    puts "Playing #{songs[cmd]}"
  end
end

def init
  puts "Please enter a command:"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  init
    cmd = input
  until cmd == "exit" do
    help if cmd == "help"
    list(songs) if cmd == "list"
    play(songs) if cmd == "play"
    cmd = input
  end
  exit_jukebox
end



