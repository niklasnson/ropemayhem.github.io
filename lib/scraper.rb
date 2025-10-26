# frozen_string_literal: true

# Order matters
require_relative 'scraper/version'
require_relative 'scraper/runner'

# Alphabetical
require_relative "scraper/agent"
require_relative "scraper/data"
require_relative "scraper/recepts"

module Scraper
  class << self
    def start
      agent = Agent.new
      data = Data.new("_data/events.yml")
      Runner.new(Recepts.redlily_com(agent.mechanize, data))
    end
  end
end

