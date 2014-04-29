require 'httparty'
require 'pp'

class TracksController < ApplicationController
  def index
     @response = Tracks.fetch_tracks(session[:token], session[:uid])
  end
end
