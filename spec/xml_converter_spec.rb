require_relative '../lib/xml_converter'

RSpec.describe XMLConverter do

  describe "extract" do
    it "extract one line" do
      xml = "<html><body><h1>hello</h1><div><span>iQON</span><span>1,200円</span><span>1,000円</span></div></body></html>"
      xpath_and_key = {"key" => "/html/body/h1"}
      converter = XMLConverter.new(xml)
      result = converter.extract(xpath_and_key)
      expect(result).to eq([{"key" => ["hello"]}])
    end
  end

end
