require 'yaml' # require modules here

def load_library(file_path)
  get_meaning ={}
  get_emoticon ={}
  YAML.load_file(file_path).each {|meaning,emoticon|
  get_meaning[emoticon[1]] = meaning
  get_emoticon[emoticon[0]] = emoticon [1]
  }
  hash = {"get_meaning" => get_meaning, "get_emoticon" => get_emoticon}
  hash
end

def get_japanese_emoticon(file_path, emoticon)
  japanese = load_library(file_path)
  return "Sorry, that emoticon was not found" if japanese["get_emoticon"][emoticon].nil?
  japanese["get_emoticon"][emoticon]
end

def get_english_meaning(file_path, emoticon)
  japanese = load_library(file_path)
  return "Sorry, that emoticon was not found" if japanese["get_meaning"][emoticon].nil?
  japanese["get_meaning"][emoticon]
end
