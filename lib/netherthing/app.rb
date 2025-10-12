# frozen_string_literal: true

require 'thor'
require 'io/console'

class Netherthing::App < Thor
  check_unknown_options!

  default_task 'main'

  desc 'main', 'Parser main loop'
  def main
    puts "Netherthing started ... "
  end
end
