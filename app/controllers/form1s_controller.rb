class Form1sController < ApplicationController
  # GET /form1s
  # GET /form1s.json
  def index
    @form1s = Form1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @form1s }
    end
  end

  # GET /form1s/1
  # GET /form1s/1.json
  def show
    @form1 = Form1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @form1 }
    end
  end

  # GET /form1s/new
  # GET /form1s/new.json
  def new
    @form1 = Form1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @form1 }
    end
  end

  # GET /form1s/1/edit
  def edit
    @form1 = Form1.find(params[:id])
  end

  # POST /form1s
  # POST /form1s.json
  def create
    @form1 = Form1.new(params[:form1])
    @form1.user_id = current_user.id
    respond_to do |format|
      if @form1.save
        format.html { redirect_to @form1, notice: 'Form1 was successfully created.' }
        format.json { render json: @form1, status: :created, location: @form1 }
      else
        format.html { render action: "new" }
        format.json { render json: @form1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /form1s/1
  # PUT /form1s/1.json
  def update
    @form1 = Form1.find(params[:id])
    @form1.user_id = current_user.id
    respond_to do |format|
      if @form1.update_attributes(params[:form1])
        format.html { redirect_to @form1, notice: 'Form1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @form1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form1s/1
  # DELETE /form1s/1.json
  def destroy
    @form1 = Form1.find(params[:id])
    @form1.destroy

    respond_to do |format|
      format.html { redirect_to form1s_url }
      format.json { head :no_content }
    end
  end
end
