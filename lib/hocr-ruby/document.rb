module HocrRuby
  class Document < HocrRuby::Element

    attr_reader :ocr_system, :ocr_capabilities


    def initialize(el)
      super(el)

      # init meta data
      @ocr_system = @parsed_text.search('meta[@name="ocr-system"]')[0].andand['content']
      @ocr_capabilities = @parsed_text.search('meta[@name="ocr-capabilities"]')[0].andand['content'].to_s.split(' ')

    end





    def self.open_file(filename)
      Document.new(open(filename){|f| f.read})
    end
  

    private



  end
end
