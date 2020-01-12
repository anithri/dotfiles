#!/usr/bin/ruby
#
# dotphiles : https://github.com/dotphiles/dotphiles
#
# Setup irb
#
# Authors:
#   Ben O'Hara <bohara@gmail.com>
#

#require 'irb/completion'
require 'irb/ext/save-history'
require 'rubygems'
require 'awesome_print'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.history/ruby"

IRB.conf[:PROMPT_MODE] = :SIMPLE

IRB.conf[:AUTO_INDENT] = true

AwesomePrint.irb!
class Object
  # list methods which aren't in superclass
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end

  # print documentation
  #
  #   ri 'Array#pop'
  #   Array.ri
  #   Array.ri :pop
  #   arr.ri :pop
  def ri(method = nil)
    unless method && method =~ /^[A-Z]/ # if class isn't specified
      klass = self.kind_of?(Class) ? name : self.class.name
      method = [klass, method].compact.join('#')
    end
    puts `ri '#{method}'`
  end
end

class Array
  def self.toy(n = 10, word = false)
    Array.new(n).fill{word ? Symbol.all_symbols.sample : rand(n)}
  end
end  

class Hash
  def self.toy(n = 10, word = false)
    word ? 
      Symbol.all_symbols.sample(n).zip(Symbol.all_symbols.sample(n)).to_h :
      Symbol.all_symbols.sample(n).zip(Array.new(n).fill{rand(n)}).to_h 
  end
end
