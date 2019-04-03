module JobsCrawler::Robots
  class Senjob < Base
    def to_json
      {
        date_de_publication: date_de_publication,
        description:         description
      }
    end

    private

    def date_de_publication
      @html.xpath('//*[@id="tablesOffres"]/tbody/tr[1]/td').text
    end

    def description
      extract_content('#tablesOffres > tbody > tr:nth-child(1) > td')
    end
  end
end
