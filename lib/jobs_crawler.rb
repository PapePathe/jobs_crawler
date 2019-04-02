require "wombat"
require "jobs_crawler/version"
require "jobs_crawler/indexers"
require "jobs_crawler/indexers/senjob"
require "jobs_crawler/indexers/pages_jaunes_senegal"

module JobsCrawler
  def self.crawl
    senjob  = Indexers::Senjob.new.crawl["links"]
    pjaunes = Indexers::PagesJaunesSenegal.new.crawl["links"]

    senjob + pjaunes
  end
end
