require_relative '../lib/siatra'
require 'open3'

describe 'Siatra' do
  context '()' do
    it 'converts linefeeds to semicolons' do
      Siatra("this\nis\na\npen.").should == 'this;is;a;pen.'
    end

    it "doesn't convert shebang line" do
      Siatra("#!a\nis\na\npen.").should == "#!a\nis;a;pen."
    end
  end
end

describe '/bin/siatra' do
  context '-h' do
    it 'shows help message' do
      x, _ = Open3.capture2e('./bin/siatra -h')
      x.should =~ /shows this message/
    end
  end

  context '-v' do
    it 'shows version' do
      x, _ = Open3.capture2e('./bin/siatra -v')
      x.should =~ /\d\.\d/
    end
  end
end
