class ProductsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  # GET /products
  # GET /products.json
  def index
    @cart = current_cart
    #@products = Product.all

    if (session[:user_id]!=nil)
      user = User.find(session[:user_id])
      if (user.name == 'admin')
        @products = Product.all
      else
        @products = user.products.all
      end
    else
      @products = Product.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @cart = current_cart
    @product = Product.find(params[:id])
    @orders = @product.orders

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    if (params[:product])
      @product = Product.new(params[:product])
      @product.user_id = session[:user_id]
    else
      params[:product] = {:title=>params[:title],
        :description=>params[:description],
        :image_url=>params[:image_url],
        :price=>params[:price]
      }
      @product = Product.new(params[:product])
      @product.user_id = session[:user_id]
    end

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])
    if (!params[:product])
     params[:product] = {:title=>params[:title], 
                         :description=>params[:description],
                         :price=>params[:price]
                        }     
    end
    
    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
