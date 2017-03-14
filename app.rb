require('sinatra')
require('sinatra/reloader')
#also_reload('lib/**/*.rb')
require('./lib/leetspeak')
require('pry')

get('/') do
  erb(:form)
end
