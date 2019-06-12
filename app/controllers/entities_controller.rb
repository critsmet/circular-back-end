class EntitiesController < ApplicationController

  def show
    @entity = Entity.find(params[:id])
    render_entity
  end

  def create
    @entity = Entity.new(entity_params)
    @entity.save
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

  def login_params
    params.require(:form).permit(:handle, :password)
  end

  def entity_params
    params.require(:entity).permit(:name, :entity_type, :handle, :email, :password)
  end
end
