class PagesController < ApplicationController
  before_filter :get_chapter

  # GET /pages
  # GET /pages.json
  def index
    @pages = @chapter.pages

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @page = @chapter.pages.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end

  # GET /pages/new
  # GET /pages/new.json
  def new
    @page = Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page }
    end
  end

  # GET /pages/1/edit
  def edit
    @page = @chapter.pages.find(params[:id])
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = @chapter.pages.build(params[:page])

    respond_to do |format|
      if @page.save
        format.html { redirect_to chapter_page_url(@chapter, @page), notice: 'Page was successfully created.' }
        format.json { render json: @page, status: :created, location: @page }
      else
        format.html { render action: "new" }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pages/1
  # PUT /pages/1.json
  def update
    @page = @chapter.pages.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:page])
        format.html { redirect_to chapter_page_url(@chapter, @page), notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page = @chapter.pages.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to chapter_page_url(@chapter, @page) }
      format.json { head :no_content }
    end
  end

  protected

  def get_chapter
    @chapter = Chapter.find params[:chapter_id]
  end
end
