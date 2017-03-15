require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/leetspeak')


get('/') do
  erb(:form)
end

get('/answer') do
#binding.pry
  @answer = params.fetch('leet').leetspeak()
  erb(:answer)
end
