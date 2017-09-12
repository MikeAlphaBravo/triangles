require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle_type')
require('pry')

get('/') do
  erb(:input)
end

post('/output') do
  @side1 = params.fetch("side1")
  @side2 = params.fetch("side2")
  @side3 = params.fetch("side3")
  tri_type = Triangles.new(@side1, @side2, @side3)
  @output = tri_type.triangle_type
  erb(:output)
end
