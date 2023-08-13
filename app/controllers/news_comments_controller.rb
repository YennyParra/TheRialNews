class NewsCommentsController < ApplicationController
    before_action :set_newscomment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  def index
    @newscomments = NewsComment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @newscomment = NewsComment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @newscomment = NewsComment.new(newscomment_params)
    
    

    respond_to do |format|
      if @newscomment.save
        format.html { redirect_to newscomment_url(@newscomment), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @newscomment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @newscomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @newscomment.update(newscomment_params)
        format.html { redirect_to news_urlcomment_url(@newscomment), notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @newscomment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @newscomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @newscomment.destroy

    respond_to do |format|
      format.html { redirect_to newscomments_url, notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newscomment
      @newscomment = NewsComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def newscomment_params
      params.require(:newscomment).permit(:body, :user_id, :news_id)
    end
end


