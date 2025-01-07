require 'bundler/inline'

gemfile do
  gem 'rspec'
end

def should_not_be_identical(a, b)
  describe a do
   it "should not be identical with #{b}" do
     res = File.identical?(a, b)
     expect(res).to be false
   end
  end
end

def should_be_identical(a, b)
  describe a do
   it "should be identical with #{b}" do
     res = File.identical?(a, b)
     expect(res).to be true
   end
  end
end

# https://github.com/ruby/ruby/blob/master/spec/ruby/shared/file/identical.rb

# res = File.identical?("A.txt", "A.txt")
# puts res.inspect

RSpec.describe do
  should_not_be_identical("IDENTICAL.TXT", "identical.txt")
  should_be_identical("identical.txt", "identical.txt")
end