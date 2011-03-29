require 'strscan'

module Siatra
  VERSION = '0.1'

  class << self
    def help
      puts "    siatra -v          shows version number"
      puts "    siatra -h          shows this message"
      puts "    siatra {filename}  shows de-artized content of the file"
    end
  end
end

def Siatra(code)
  s = StringScanner.new(code)
  memo = []
  is = {shebanged: false}
  until s.eos?
    case
    when !is[:shebanged] && s.scan(/^#!.*\n/)
      memo << s[0]
      is[:shebanged] = true
    when s.scan(/\r?\n/m)
      memo << ';'
    when s.scan(/./)
      memo << s[0]
    else
      raise 'must not happen'
    end
  end
  memo.join
end
