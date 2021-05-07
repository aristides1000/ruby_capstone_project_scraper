require './lib/methods'

describe Methods do
  describe "#csv_data" do
    it "returns a file CSV" do
      list = Methods.new()
      test = (list.csv_data).class
      expect(test).to eql(CSV)
    end

    it "the method does not return empty" do
      list = Methods.new()
      test = (list.csv_data).nil?
      expect(test).to eql(false)
    end
  end
end
