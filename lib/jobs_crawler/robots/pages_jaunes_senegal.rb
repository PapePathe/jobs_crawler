module JobsCrawler
  class Robots::PagesJaunesSenegal
    include Wombat::Crawler

    base_url 'https://www.emploisenegal.com'
    path     '/recherche-jobs-senegal'
    ¬
    links 'css=.search-results .job-description-wrapper', :iterator do
      url({ xpath: ".//@data-href" })
      titre({ xpath: ".//text()" })
    end
  end
end
