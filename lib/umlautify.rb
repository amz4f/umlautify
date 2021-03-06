# Encoding: utf-8
require 'umlautify/version'

module Umlautify
  class ::String
    def umlautify!
      gsub!(/[aeiouyAEIOUY]/, umlaut_map)
    end

    def umlautify
      gsub(/[aeiouyAEIOUY]/, umlaut_map)
    end

    private

      def umlaut_map
        { 'A' => "\u00C4", 'E' => "\u00CB", 'I' => "\u00CF",
          'O' => "\u00D6", 'U' => "\u00DC", 'Y' => "\u0178",
          'a' => "\u00E4", 'e' => "\u00EB", 'i' => "\u00EF",
          'o' => "\u00F6", 'u' => "\u00FC", 'y' => "\u00FF" }
      end
  end
end
