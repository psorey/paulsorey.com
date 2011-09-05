require 'sinatra'
require 'erb'
require 'sinatra/outputbuffer'


get '/' do
  erb :index
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
