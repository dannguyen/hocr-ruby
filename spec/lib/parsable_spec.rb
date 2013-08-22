require 'spec_helper'

describe "HocrRuby::Parsable" do

  context 'class methods' do 
    describe '#parse_text' do 
      it 'should convert String to Nokogiri::XML::Node' do 
        @html = "<p>Whats up</p>"
        expect(Parsable.parse_text(@html)).to be_a Nokogiri::XML::Node
      end

      it 'should be idempotent with Nokogiri::XML::Node' do 
        @node = Nokogiri::XML "<p>Whats up</p>"
        expect(Parsable.parse_text(@node)).to be_a Nokogiri::XML::Node
        # expect object identity instead of duping, for now
        expect(Parsable.parse_text(@node)).to eq @node
      end

      it 'should raise error if not a String or Node' do 
        expect{ Parsable.parse_text([1,2,3]) }.to raise_error ArgumentError
      end
    end  

    describe '#node_to_text' do 
      it 'should be idempotent with String' do 
        @html = "<p>Whats up</p>"
        expect(Parsable.node_to_text(@html)).to eq @html
      end

      it 'should convert Node to String' do 
        @node = Nokogiri::XML "<p>Whats up</p>"
        expect(Parsable.node_to_text(@node)).to eq "<p>Whats up</p>"
      end
    end 
  end
end
