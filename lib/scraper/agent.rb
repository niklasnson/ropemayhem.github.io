# frozen_string_literal: true

require 'mechanize'

class Scraper::Agent
  attr_accessor :mechanize

  def initialize
    @mechanize = Mechanize.new
    @mechanize.user_agent_alias = 'Mac Safari'
  end
end
