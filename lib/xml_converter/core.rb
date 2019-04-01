require 'nokogiri'

class XMLConverter

  attr_reader :xml

  def initialize(xml)
    @xml = Nokogiri::XML(xml)
  end

  def extract(key_and_xpath)
    r = []
    key_and_xpath.each do |k, v|
      r.push({ k => @xml.xpath(v).map {|e| e.text } })
    end
    r
  end

end
