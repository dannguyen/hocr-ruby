require_relative 'parsable'

module HocrRuby
  # expects ordered hash
  COMMON_OCR_CAPABILITIES = {
    page: 'ocr_page', 
    area: 'ocr_carea',
    paragraph: 'ocr_par',
    line: 'ocr_line', 
    word: 'ocrx_word'
  }




  class Element
    include HocrRuby::Parsable

    def initialize(el)
      @raw_text = Parsable.node_to_text(el)
      @parsed_text = Parsable.parse_text(el)
    end


    

  end
end



require_relative 'document'