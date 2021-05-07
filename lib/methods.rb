#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'csv'

class Methods
  attr_reader :doc, :articles_list

  def initialize
    @doc = Nokogiri::HTML(URI.open('https://celulares.mercadolibre.com.ve/'))
    @articles_list = []
  end

  def csv_method
    @doc.css('.ui-search-item__group__element').each do |link|
      @articles_list << link.content
    end

    csv_data
  end

  private

  def csv_data
    CSV.open('./articles_list.csv', 'w') do |csv|
      csv << @articles_list
    end
  end
end
