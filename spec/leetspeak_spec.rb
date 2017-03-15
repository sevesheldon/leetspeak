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
    expect(("bOO boo").leetspeak()).to(eq("b00 b00"))
  end

  it('replaces the letter "I" (but not "i") with "1"') do
    expect(("Init").leetspeak()).to(eq("1nit"))
  end

  it('replaces the letter "s" with "z"') do
    expect(("roses").leetspeak()).to(eq("r0z3z"))
  end

  it('does not replace "s" with "z" if it is the first letter of a word') do
    expect(("sassafrass").leetspeak()).to(eq("sazzafrazz"))
  end
end
