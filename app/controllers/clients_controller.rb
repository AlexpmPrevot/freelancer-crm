class ClientsController < ApplicationController
  before_action :set_client, only: %i[show edit update destroy]
  before_action :set_clients, only: %i[index create]
  before_action :set_new_instance, only: %i[index new]

  def index
  end

  def show
  end

  def new
  end

  def create
    @client = Client.new(client_params)
    @client.user_id = current_user.id
    if @client.save!
      redirect_to client_path(@client)
    else
      render 'index'
    end
  end

  def edit
  end

  def update
    if @client.update_attributes(client_params)
      redirect_to client_path(@client)
    else
      render 'edit'
    end
  end

  def destroy
    if @client.destroy
      redirect_to clients_path
    else
      redirect_to client_path(@client)
    end
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def set_clients
    @clients = Client.all
  end

  def set_new_instance
    @client = Client.new
  end

  def client_params
    params.require(:client).permit(:name, :address)
  end
end
