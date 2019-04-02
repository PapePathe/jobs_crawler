module JobsCrawler
  class Indexers::Senjob
    include Wombat::Crawler

    base_url 'http://www.senjob.com/'
    path     'm/m-offres-azjob.php'
    ¬
    featured 'css=#leadsCycleList2 li a', :iterator do
      url({ xpath: ".//@href" })
      titre({ xpath: ".//text()" })
    end

    links 'css=#les_offres table#offresenjobs a', :iterator do
      url({ xpath: ".//@href" })
      titre({ xpath: ".//text()" })
    end
  end
end
