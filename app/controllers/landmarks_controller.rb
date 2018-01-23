class LandmarksController < ApplicationController

	get '/landmarks' do
	  erb :'landmarks/index'
	end

	get '/landmarks/new' do
	  erb :'landmarks/new'
	end

	get '/landmarks/:id/edit' do
		@landmark = Landmark.find(params[:id])
		erb :'landmarks/edit'
	end

	get '/landmarks/:id' do
	  @landmark = Landmark.find(params[:id])
	  erb :'landmarks/show'
	end

	post '/landmarks/new' do
		@landmark = Landmark.create(params[:landmark])
		redirect "/landmarks/#{params[:id]}"
	end

	patch '/landmarks/:id' do
		#binding.pry
		@landmark = Landmark.find(params[:id])
		@landmark.update(params[:landmark])
		redirect "/landmarks/#{params[:id]}"
	end
end
