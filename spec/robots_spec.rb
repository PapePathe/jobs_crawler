RSpec.describe JobsCrawler::Robots do
  it { is_expected.to respond_to(:crawl_atoo_job) }
  it { is_expected.to respond_to(:crawl_emploi_senegal) }

  context '#crawl_atoo_job'
  context '#crawl_emploi_senegal'
end
