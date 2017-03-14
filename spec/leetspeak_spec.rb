require('rspec')
require('leetspeak')
require('pry')

describe('String#leetspeak') do
  it('returns a string when no leetspeak rules are applied') do
    expect("happy".leetspeak).to(eq("happy"))
  end
end
