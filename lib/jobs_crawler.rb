require "wombat"
require "jobs_crawler/version"
require "jobs_crawler/indexers"
require "jobs_crawler/indexers/senjob"
require "jobs_crawler/indexers/emploi_senegal"
require "jobs_crawler/indexers/pages_jaunes_senegal"

module JobsCrawler
  def self.crawl
    senjob         = Indexers::Senjob.new.crawl["links"]
    pjaunes        = Indexers::PagesJaunesSenegal.new.crawl["links"]
    emploi_senegal = Indexers::EmploiSenegal.new.crawl["links"]

    senjob + pjaunes + emploi_senegal
  end
end
