require './lib/methods'

describe Methods do
  describe '#csv_data' do
    it 'returns a file CSV' do
      list = Methods.new
      test = list.csv_method.class
      expect(test).to eql(CSV)
    end

    it 'the method does not return empty' do
      list = Methods.new
      test = list.csv_method.nil?
      expect(test).to eql(false)
    end

    it 'documents should include iPhone' do
      list = Methods.new
      list.csv_method
      test = list.articles_list.any? { |v| v.include? 'iPhone' }
      expect(test).to eql(true)
    end

    it 'documents should include BlackBerry' do
      list = Methods.new
      list.csv_method
      test = list.articles_list.any? { |v| v.include? 'BlackBerry' }
      expect(test).to eql(false)
    end
  end
end
