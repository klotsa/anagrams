require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @display = params.fetch('result').anagrams()
  erb(:result)
end
