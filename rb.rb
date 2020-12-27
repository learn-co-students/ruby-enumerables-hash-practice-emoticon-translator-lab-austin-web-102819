def load_library(file_path)
  new_hash = {
   "get_meaning" => {},
   "get_emoticon" => {}
 }
 require 'yaml'
 library = YAML.load_file(file_path)
 library.each do |meaning, translation|
   english = translation[0]
   japanese = translation[1]
   new_hash["get_meaning"][japanese] = meaning
   new_hash["get_emoticon"][english] = japanese
 end
  p new_hash["get_emoticon"]
end

load_library("emojis.yml")

require "yaml"

def load_library(file_path)
  new_hash = {
    "get_meaning": {},
    "get_emoticon": {}
  }
  emoticons = YAML.load_file(file_path)
 emoticons.each do |word, emojis|
  english_emoji = emojis[0]
  japanese_emoji = emojis[1]
  new_hash["get_meaning"][japanese_emoji] = word
  new_hash["get_emoticon"][english_emoji] = japanese_emoji
 end

end
