require('sinatra')
require('sinatra/reloader')
#also_reload('lib/**/*.rb')
require('./lib/leetspeak')
require('pry')
require ('rspec')

get('/') do
  erb(:form)
end
