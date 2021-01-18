 require "yaml"
def load_library (file)
  file = YAML.load_file("./lib/emoticons.yml")
   
  smiley_hash = {  "get_meaning"=> {}, "get_emoticon"=> {} }
 
 file.each do |meaning, smileys|
   english = smileys[0]
   japanese = smileys[1]
   smiley_hash["get_meaning"][japanese] = meaning
   smiley_hash["get_emoticon"][english] = japanese
 end
  return smiley_hash
end




def get_japanese_emoticon(file,emoticon)
  xx=load_library(file)
  xx["get_emoticon"].each do |k,v|
    if k == emoticon
    return  v  
  end
 end
 return "Sorry, that emoticon was not found"
end


def get_english_meaning(file,emoticon)
 yy=load_library(file)
  yy["get_meaning"].each do |k,v|
    if k == emoticon
      return v
  
 end
 end 
 return "Sorry, that emoticon was not found"
end