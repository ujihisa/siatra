require_relative '../lib/siatra'

describe 'Siatra' do
  context '()' do
    it 'converts linefeeds to semicolons' do
      Siatra("this\nis\na\npen.").should == 'this;is;a;pen.'
    end
  end
end
