require 'yaml'



def load_library(file_path)
 library = YAML.load_file(file_path)
 new_hash = {
  "get_meaning" => {},
  "get_emoticon" => {}
 }
 library.each do |word, emojis|
   english_emoji = emojis[0]
   japanese_emoji = emojis[1]
   new_hash["get_meaning"][japanese_emoji] = word
   new_hash["get_emoticon"][english_emoji] = japanese_emoji
 end
   new_hash
end


def get_japanese_emoticon(file_path, emoticon)
    result = load_library(file_path)["get_emoticon"][emoticon]
    if result
       return result
     else
       return "Sorry, that emoticon was not found"
    end
end

get_japanese_emoticon('lib/emoticons.yml', ";w")


def get_english_meaning(file_path, emoticon)
  result = load_library(file_path)["get_meaning"][emoticon]
  if result
    return result
  else
    return "Sorry, that emoticon was not found"
  end 
end


{"angel"=>["O:)", "☜(⌒▽⌒)☞"],
 "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],
 "bored"=>[":O", "(ΘεΘ;)"],
 "confused"=> ["%)", "(゜.゜)"],
 "embarrased"=>[":$", "(#^.^#)"],
 "fish"=>["><>", ">゜))))彡"],
 "glasses"=>["8D", "(^0_0^)"],
 "grinning"=>["=D", "(￣ー￣)"],
 "happy"=>[":)", "(＾ｖ＾)"],
 "kiss"=>[":*", "(*^3^)/~☆"],
 "sad"=>[":'(", "(Ｔ▽Ｔ)"],
 "surprised"=>[":o", "o_O"],
 "wink"=>[";)", "(^_-)"]}
