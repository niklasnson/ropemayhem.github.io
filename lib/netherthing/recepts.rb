# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

class Netherthing::Recepts
  class << self
    def redlily_com
      doc = Nokogiri::HTML(URI.open('https://www.redlily.dk/workshops-events'))
      puts doc
    end

    def shibarihouse_com
      doc = Nokogiri::HTML(URI.open('https://www.shibarihouse.com/'))
      puts doc
    end

    def yorokobi_nu
      # visit https://www.yorokobi.nu/events
      doc = Nokogiri::HTML(URI.open('https://www.yorokobi.nu/events'))
      puts doc
    end
  end
end
