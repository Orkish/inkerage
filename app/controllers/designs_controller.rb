class DesignsController < ApplicationController

  def index
  
  client = Tumblr::Client.new(:client => :httpclient)
  @picture = client.posts("blackdwork.tumblr.com/", :type => "photo", :limit => 150)
  @pix = client.posts("get-fucked-and-get-inked.tumblr.com/", :type => "photo", :limit => 200)
  #use the @variable if you want to display it in views
  end

  def add_fav
    design = Design.new(params[:designs])
    design.save
    current_user.designs << design 
    redirect_to '/users/profile'
  end

end
