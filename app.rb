require 'bundler'
require 'cuba'
require "cuba/render"

Bundler.require

Cuba.plugin(Cuba::Render)
Cuba.settings[:render][:template_engine] = "haml"

Dir["./lib/**/*.rb"].each     { |rb| require rb }
Dir["./models/**/*.rb"].each  { |rb| require rb }

Cuba.define do
  on get do
    res.write view("/index")
  end
end