# frozen_string_literal: true

require 'mechanize'
require 'nokogiri'
require 'open-uri'

class Scraper::Recepts
  class << self
    def redlily_com(mechanize, data)
      page = mechanize.get('https://www.redlily.dk/workshops-events')
      # Find all events
      page.search('div.eventlist article').each do |event_link|
        # Visit each event url and scrape the data.
        begin
          url = 'https://www.redlily.dk' + event_link.at('a.eventlist-title-link')['href']
          event = mechanize.get(url)

          event_title = event.at('h1.eventitem-title').text
          event_date = event.at('time.event-date')['datetime']
          event_text = if event.at('div.product-excerpt')
                          event.at('div.product-excerpt').text
                       elsif event.at('div.sqs-block-content')
                          event.at('div.sqs-block-content').text
                       end

          # Event loaction
          location = []
          event.at('ul.event-meta-address-container')
            .css('span.eventitem-meta-address-line').map do |p|
              item = p.text
              unless item == "Red Lily"
                location.append(item.strip.gsub(",",""))
              end
            end
          if location.length == 1
            location.clear
          end

          puts location.inspect

          data.append({
            title: event_title,
            date: event_date,
            text: event_text.strip,
            online: location.empty? ? true : false,
            address: location[1],
            city: (location.size < 2 ? location[1] : location[0]).strip,
            country: location[-1],
            url: url
          })
        rescue => e
          puts "Error while parsing #{url}: #{e.class} - #{e.message}"
        end
      end
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
