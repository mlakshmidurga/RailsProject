class CartController < ApplicationController
  def add
    id = params[:id]
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end
    if cart[id] then
      cart[id] = cart[id] +1
    else
      cart[id]=1
    end
    redirect_to :action => :index
  end
  def clearCart
    session[:cart]=nil
    redirect_to :action => :index
  end

  def index
  	if session[:cart] then
  		@cart=session[:cart]
  	else
  		@cart ={}
  	end
  end
  def show
    @flower=Flower.find(params[:id])
  end
  def destroy
    @flower = Flower.find(params[:id])
    @flower.destroy
    redirect_to flowers_path
  end
end
