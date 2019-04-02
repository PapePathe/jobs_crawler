module JobsCrawler::Indexers

  class PagesJaunesSenegal
    include Wombat::Crawler

    base_url 'http://pagesjaunesdusenegal.com'
    path     '/oe'
    ¬
    links "xpath=//a[contains(@href,'details-oe')]", :iterator do
      url({ xpath: ".//@href" }) do |u|
        'http://pagesjaunesdusenegal.com/' + u
      end
      titre({ xpath: ".//b" })
    end
  end
end
