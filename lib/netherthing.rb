# frozen_string_literal: true

# Order matters
require_relative 'netherthing/version'
require_relative 'netherthing/netherthing'

# Alphabetical
require_relative "netherthing/recepts"
require_relative "netherthing/scraper"

module Netherthing
  class << self
    def start
      Scraper.new(Recepts.shibarihouse_com)
    end
  end
end

