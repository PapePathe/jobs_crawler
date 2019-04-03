RSpec.describe JobsCrawler do
  it "has a version number" do
    expect(JobsCrawler::VERSION).not_to be nil
  end

  it "responds to crawl" do
    is_expected.to respond_to(:crawl)
  end
end
