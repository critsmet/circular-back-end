class EntitiesController < ApplicationController

  #combine the show and show_public methods togeher
  def show
    @entity = Entity.find(params[:id])
    render_entity
  end

  def show_public
    @entity = Entity.find(params[:id])
    render_public
  end

  def create
    @entity = Entity.create(entity_params)
    render_entity
  end

  def login
    @entity = Entity.find_by(handle: login_params[:handle])
    if @entity.authenticate(login_params[:password])
      render_entity
    end
  end

  private

  def render_entity
    render json: PrivateEntitySerializer.new(@entity)
  end

  def render_public
    render json: PublicEntitySerializer.new(@entity)
  end

  def login_params
    params.require(:form).permit(:handle, :password)
  end

  def entity_params
    params.require(:entity).permit(:name, :entity_type, :handle, :email, :password)
  end
end
