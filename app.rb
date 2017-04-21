require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
 

  get('/anagrams') do
  @anagram = (params.fetch('anagrams1')).anagrams(params.fetch('anagrams2'))
  erb(:anagrams)
end
