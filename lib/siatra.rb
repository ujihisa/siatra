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
  code.gsub("\n", ";")
end
