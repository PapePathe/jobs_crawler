module JobsCrawler
  class Indexers::EmploiSenegal
    include Wombat::Crawler

    base_url 'https://www.emploisenegal.com'
    path     '/recherche-jobs-senegal'
    ¬
    links 'css=.search-results .job-description-wrapper', :iterator do
      url({ xpath: ".//@data-href" })
      titre({ xpath: ".//text()" })
      scraping_source('emploisenegal')
    end
  end
end
