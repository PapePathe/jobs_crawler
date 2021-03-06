module JobsCrawler::Robots
  require 'jobs_crawler/robots/base'
  require 'jobs_crawler/robots/senjob'
  require 'jobs_crawler/robots/atoo_job'
  require 'jobs_crawler/robots/emploi_senegal'
  require 'jobs_crawler/robots/pages_jaunes_senegal'

  class << self
     def crawl_atoo_job(url)
       JobsCrawler::Robots::AtooJob.new(url).crawl
     end

     def crawl_emploi_senegal(url)
       JobsCrawler::Robots::EmploiSenegal.new(url).crawl
     end

     def crawl_pages_jaunes_senegal(url)
       JobsCrawler::Robots::PagesJaunesSenegal.new(url).crawl
     end
  end
end
