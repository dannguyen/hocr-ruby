require 'nokogiri'

module HocrRuby
  module Parsable

    def self.included(base)
        base.extend(ClassMethods)
        attr_reader :raw_text, :parsed_text
    end


    def self.parse_text(htmltxt)
      if htmltxt.is_a?(String)
        Nokogiri::XML(htmltxt)
      elsif htmltxt.kind_of?(Nokogiri::XML::Node)
        htmltxt
      else
        raise ArgumentError, "Requires either a String or Nokogiri node, but you passed in a #{htmltxt.class}"
      end        
    end     

    def self.node_to_text(node)
      if node.is_a?(String)
        node 
      else
        node.inner_html
      end
    end      

    module ClassMethods; end #nothing for now
  end
end