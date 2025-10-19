# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

class Netherthing::Scraper
  attr_accessor :recept

  def initialize(recept)
    @recept = recept
  end
end
