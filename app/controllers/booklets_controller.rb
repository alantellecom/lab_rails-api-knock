class BookletsController < ApplicationController
  before_action :set_booklet, only: [:show, :update, :destroy]
  load_and_authorize_resource

  # GET /booklets
  def index
    @booklets = Booklet.all

    render json: @booklets
  end

  # GET /booklets/1
  def show
    render json: @booklet
  end

  # POST /booklets
  def create
    @booklet = Booklet.new(booklet_params)

    if @booklet.save
      render json: @booklet, status: :created, location: @booklet
    else
      render json: @booklet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /booklets/1
  def update
    if @booklet.update(booklet_params)
      render json: @booklet
    else
      render json: @booklet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /booklets/1
  def destroy
    @booklet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booklet
      @booklet = Booklet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def booklet_params
      params.require(:booklet).permit(:user_id, :book_id)
    end
end
