require 'sinatra'
require 'erb'
require 'sinatra/outputbuffer'
require 'haml'
require 'sass'


get '/' do
  erb :index
end

get '/index' do
  erb :index
end

get '/mystyle.css' do
  scss :mystyle
end

get '/WebDeveloper' do
  erb :web_developer, :layout => :layout_web_dev
end

get '/SoftwareDeveloper' do
  erb :software_developer, :layout => :layout_web_dev
end

get '/RoadDesignSoftware' do
  erb :road_design_software, :layout => :layout_web_dev
end
  
get '/RainDrums' do
  erb :rain_drums, :layout => :layout_web_dev
end

get '/Greenwood' do
   erb :greenwood, :layout => :layout_web_dev
end

get '/ZebraTime' do
   erb :zebra_time, :layout => :layout_web_dev  
end

get '/SalmonLEDs' do
   erb :salmn_led, :layout => :layout_web_dev
end

get '/RoadWorksLEDs' do
   erb :road_works_led, :layout => :layout_web_dev
end

get '/SalmonWaves' do
  erb :salmon
end

get '/FractalTreeArchway' do
  erb :skagit
end

get '/RoadWorks' do
  erb :pierce
end

get '/Flock' do
  erb :flock
end

get '/CoffeePotPergola' do
  erb :coffee
end

get '/TreeBench' do
  erb :treeBench
end

get '/JusticeGardenPath' do
  erb :justice
end

get '/CribbageBenches' do
  erb :cribbage
end

get '/PacificFountain' do
  erb :pacific
end

get '/DogwoodFountain' do
  erb :dogwood
end

get '/AuburnFigures' do
  erb :auburn
end

get '/LongfellowCreek' do
  erb :longfellow
end

get '/SustainabilityArtwork' do
  erb :sustainability
end

get '/FlowerSculpture' do
  erb :horns
end

get '/TreeBenchVideo' do
  erb :treeBenchVideo
end

get '/ArtworkLocations' do
  erb :locations
end

get '/Contact' do
  erb :contact
end
