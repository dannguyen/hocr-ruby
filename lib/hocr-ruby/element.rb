require_relative 'parsable'

module HocrRuby
  class Element
    include HocrRuby::Parsable

    def initialize(el)
      @raw_text = Parsable.node_to_text(el)
      @parsed_text = Parsable.parse_text(el)
    end

  end
end