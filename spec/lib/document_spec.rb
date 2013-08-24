
require 'spec_helper'

describe 'HocrRuby::Document' do 


  describe '#initialization' do 

    before(:each) do 
      @meta = %q{<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
 <head>
  <title></title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name='ocr-system' content='tesseract 3.02.02' />
  <meta name='ocr-capabilities' content='ocr_page ocr_carea ocr_par ocr_line ocrx_word'/>
 </head>}

      @doc = Document.new(@meta)
    end

    it 'should set @ocr_system' do 
      expect(@doc.ocr_system).to eq 'tesseract 3.02.02'
    end

    it 'should set @ocr_capabilities to an array' do 
      expect(@doc.ocr_capabilities).to include(*(%w(ocr_page ocr_carea ocr_par ocr_line ocrx_word)))
    end

  end


  context 'element creation' do 
    before(:each) do 
      @doc = Document.open_file(File.join(SPEC_FIXTURES, 'example-pdfs', 'f1040es-1.html'))
    end

    it 'should have words' do 
      pending 'meta definition of element parsing methods, perhaps delegate to Nokogiri?'
      expect(@doc.words.count).to be > 10
    end

  end



end



