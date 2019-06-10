class ClienteController < ApplicationController
  def index
    @clientes= Cliente.all()
  end

  def new
    @cliente= Cliente.new
  end

  def show
    @cliente = Cliente.find(params[:id])
  end

  def create
    @cliente=Cliente.new
    @cliente.ruc=params[:cliente][:ruc]
    @cliente.nombre=params[:cliente][:nombre]
    @cliente.direccion=params[:cliente][:direccion]
    @cliente.ciudad=params[:cliente][:ciudad]
    @cliente.telefono=params[:cliente][:telefono]
    @cliente.email=params[:cliente][:email]
    
    if @cliente.save 

     redirect_to cliente_index_path
     else
      
    render "new"
  end
  end

  def edit
    @id=params[:id]
    @cliente=Cliente.find(@id)
  end

  def update
    @id=params[:cliente][:id]
    @cliente=Cliente.find(@id)
    @cliente.ruc=params[:cliente][:ruc]
    @cliente.nombre=params[:cliente][:nombre]
    @cliente.direccion=params[:cliente][:direccion]
    @cliente.ciudad=params[:cliente][:ciudad]
    @cliente.telefono=params[:cliente][:telefono]
    @cliente.email=params[:cliente][:email]
    if @cliente.save
      redirect_to cliente_index_path
    else
      render "edit"
    end    
  end

  def destroy
    # @id=params[:id]
    # cliente=Cliente.find(@id)
    # cliente.destroy
    # redirect_to cliente_index_path
    @cliente = Cliente.find(params[:id])
    @cliente.destroy

  redirect_to :action => :index
  end
end
