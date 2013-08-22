require 'spec_helper'

describe 'HocrRuby::Element' do 

  context 'initialization' do 
    before(:each) do 
      @html = %q{<!doctype html><html lang="en"><head><meta charset="UTF-8" /><title>Document</title></head><body></body></html>}
      @el = Element.new(@html)
    end

    it 'has @raw_text' do 
      expect(@el.raw_text).to eq @html
    end

    it 'has @parsed_text' do 
      expect(@el.parsed_text).to be_a Nokogiri::XML::Node
    end

  end


end