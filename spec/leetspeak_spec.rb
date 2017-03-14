require('rspec')
require('leetspeak')
require('pry')

describe('String#leetspeak') do
  it('returns a string when no leetspeak rules are applied') do
    expect("happy".leetspeak).to(eq("happy"))
  end

  it('replaces the letter "e" with "3"') do
    expect(("eve").leetspeak()).to(eq("3v3"))
  end

  it('replaces the letter "o" with "0"') do
    expect(("room").leetspeak()).to(eq("r00m"))
  end
end
