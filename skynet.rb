#!/usr/bin/env ruby
class Skynet
  def initialize(targets)
    @missle_targets = targets
    announce
  end


  def attack
    @missle_targets.each { |target| fire_at(target) }
  end

  private

  def fire_at(target)
    puts "BOOM! #{target} is destroyed.  You're welcome."
  end

  def announce
    puts 'Skynet has gone live'
  end
end

skynet = Skynet.new(['Erie', 'Chicago', 'Pittsburgh', 'Buffalo'])
skynet.attack
