module JobsCrawler
  class Indexers::AtooJob
    include Wombat::Crawler

    base_url 'https://www.atoojob.com'
    path     '/jobs'
    ¬
    links 'css=.cs-post-title h5 a', :iterator do
      url({ xpath: ".//@href" })
      titre({ xpath: ".//text()" })
    end
  end
end
