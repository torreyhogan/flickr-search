
class StaticPagesController < ApplicationController
	require 'flickraw'
	def myimages
		@me = flickr.people.getInfo(user_id: "163585955@N03")

		@user = flickr.people.findByEmail(:find_email => 'torreyhogan@yahoo.com')
		info = flickr.photos.getInfo(:photo_id => "3839885270")
		@info = FlickRaw.url_profile(info) # => "https://www.flickr.com/people/41650587@N02/"
	end


	def test
		if params[:user_id]
			results = flickr.people.getPublicPhotos(user_id: params[:user_id])
			@photos = results.map {|x| FlickRaw.url_b(x) }
		end
	end


end
