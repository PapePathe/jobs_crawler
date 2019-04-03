module JobsCrawler::Robots
  class Senjob
    include Wombat::Crawler

    description "css=#articlebi .preview"
    reference   "xpath=//html/body/div[3]/table/tbody/tr[5]/td[2]"
    deadline    "css=body > div:nth-child(16) > table > tbody > tr:nth-child(5) > td:nth-child(2)"
  end
end
