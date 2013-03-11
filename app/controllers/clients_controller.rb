class ClientsController < ApplicationController
  before_filter :logged_in

  def index
    @clients = Client.order(:name)
  end
  def new
    @client = Client.new
  end
  def create
    Client.create(params[:client])
    @clients = Client.order(:name)
  end
  def update
    client = Client.find(params[:id])
    client.update_attributes(params[:client])
    render :json => [client]
  end
  def up
    client = Client.find(params[:id])
    render :json => client.swap_higher(@auth)
  end
  def down
    client = Client.find(params[:id])
    render :json => client.swap_lower(@auth)
  end

end