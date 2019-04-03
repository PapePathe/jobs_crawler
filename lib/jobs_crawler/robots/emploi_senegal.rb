module JobsCrawler::Robots
  class EmploiSenegal < Base

    def to_json
     {
       date_de_publication: date_de_publication,
       description:         description,
     }
    end

    private

    def description
      extract_content('#job-ad-details-261761 > div > div')
    end

    def date_de_publication
      extract_content('#node-261761 > div > div.job-ad-publication-date')
    end

  end
end
