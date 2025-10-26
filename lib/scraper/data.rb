# frozen_string_literal: true

class Scraper::Data
  attr_accessor :file

  def initialize(filename)
    @file = File.open(filename, "w")
  end

  def append(item)
    file.write(format_as_yaml(item))
  end

  private

  def format_as_yaml(item)
<<-eos
- title: "#{item[:title]}"
  date: #{item[:date]}
  text: "#{item[:text].gsub("\"", "")}"
  online: "#{item[:online]}"
  url: "#{item[:url]}"
  country: "#{item[:country]}"
  address: "#{item[:address]}"
  city: "#{item[:city]}"
eos
  end
end
