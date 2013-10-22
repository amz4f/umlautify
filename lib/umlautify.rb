require "umlautify/version"

module Umlautify
  class << self
    def do(string)
      umlaut_map = { "A" => "\u00C4", "E" => "\u00CB", "I" => "\u00CF",
    		             "O" => "\u00D6", "U" => "\u00FC", "Y" => "\u0178",
                     "a" => "\u00E4", "e" => "\u00EB", "i" => "\u00EF",
   		               "o" => "\u00F6", "u" => "\u00FC", "y" => "\u00FF" }
   		               # No Spinal Tap support for "N" => "\u004E\u0308", "n" => "\u006E\u0308" 
      umlaut_map.each { |key, value| string.gsub!(key, value) }
      string
    end
  end
end
