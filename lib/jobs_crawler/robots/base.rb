module JobsCrawler::Robots
  class Base
    attr_reader :url

    def initialize(url)
      @url = url
      @engine = Mechanize.new
    end

    def crawl
      set_html
      to_json
    end

    def extract_content(css_selector)
      @html.css(css_selector).text
    end

    def to_json
      raise NotImplemetedError, 'You need to provide a concrete implemetatioen'
    end

    def set_html
      @html = Nokogiri::HTML(body)
    end

    private

    def body
      @engine.get(url).body
    end
  end
end
