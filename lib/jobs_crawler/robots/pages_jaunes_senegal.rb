module JobsCrawler::Robots
  class PagesJaunesSenegal < Base
    def to_json
      {
        date_de_publication: date_de_publication,
        description:         description,
      }
    end

    private

    def date_de_publication
      I18n.l Date.today, format: :long
    end

    def description
      extract_content('#contenu > div:nth-child(1) > table')
    end
  end
end
