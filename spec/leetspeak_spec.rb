require('rspec')
require('leetspeak')
require('pry')

describe('String#leetspeak') do
  it('returns a string when no leetspeak rules are applied') do
    expect("happy".leetspeak).to(eq("happy"))
  end

  it('replaces the letter "e" with "3"') do
    expect(("Eve").leetspeak()).to(eq("3v3"))
  end

  it('replaces the letter "o" with "0"') do
    expect(("Opossum").leetspeak()).to(eq("0p0ssum"))
  end

  it('replaces the letter "I" (but not "i") with "1"') do
    expect(("Init").leetspeak()).to(eq("1nit"))
  end
end
