def should_not_be_identical(a, b)
  it "#{a} != #{b}" do
    res = File.identical?(a, b)
    expect(res).to be false
  end
end

def should_be_identical(a, b)
  it "#{a} == #{b}" do
    res = File.identical?(a, b)
    expect(res).to be true
  end
end

# https://github.com/ruby/ruby/blob/master/spec/ruby/shared/file/identical.rb

# res = File.identical?("A.txt", "A.txt")
# puts res.inspect

RSpec.describe do
  # should_not_be_identical("A.txt", "a.txt")
  # should_not_be_identical("2025-01-01_IKEA.pdf", "2025-01-01_ikea.pdf")

  # should_be_identical("A.TXT", "A.TXT")
  # should_be_identical("2025-01-01_ikea.pdf", "2025-01-01_ikea.pdf")

  it do
    expect(File.join('a', 'b')).to eq('a/b')
  end
end