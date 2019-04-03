module JobsCrawler
  class Robots::AtooJob
    attr_reader :url

    def initialize(url)
      @url    = url
      @engine = Mechanize.new
    end

    def crawl
      set_html
      to_json
    end

    private

    def set_html
      @html = Nokogiri::HTML(body)
    end

    def to_json
      {
        date_de_publication: date_publication,
        description:         description,
      }
    end
    def description
      @html.css('#main > article > div.main-section.jobs-detail-3 > div:nth-child(2) > div > div > div.section-content.col-lg-8.col-md-8.col-sm-12.col-xs-12 > div.row > div.col-lg-8.col-md-8.col-sm-12.col-xs-12.col-xs-12 > div').text
    end

    def date_publication
      @html.css('#main > article > div.main-section.jobs-detail-3 > div:nth-child(1) > div > div > div > div > div > div > div.cs-text > ul > li:nth-child(1) > span').text
    end

    def body
      @engine.get(url).body
    end
  end
end
