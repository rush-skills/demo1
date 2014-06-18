class Form2sController < ApplicationController
  # GET /form2s
  # GET /form2s.json
  def index
    @form2s = Form2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @form2s }
    end
  end

  # GET /form2s/1
  # GET /form2s/1.json
  def show
    @form2 = Form2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @form2 }
    end
  end

  # GET /form2s/new
  # GET /form2s/new.json
  def new
    @form2 = Form2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @form2 }
    end
  end

  # GET /form2s/1/edit
  def edit
    @form2 = Form2.find(params[:id])
  end

  # POST /form2s
  # POST /form2s.json
  def create
    @form2 = Form2.new(params[:form2])
    @form2.user_id = current_user.id
    respond_to do |format|
      if @form2.save
        format.html { redirect_to @form2, notice: 'Form2 was successfully created.' }
        format.json { render json: @form2, status: :created, location: @form2 }
      else
        format.html { render action: "new" }
        format.json { render json: @form2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /form2s/1
  # PUT /form2s/1.json
  def update
    @form2 = Form2.find(params[:id])
    @form2.user_id = current_user.id
    respond_to do |format|
      if @form2.update_attributes(params[:form2])
        format.html { redirect_to @form2, notice: 'Form2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @form2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form2s/1
  # DELETE /form2s/1.json
  def destroy
    @form2 = Form2.find(params[:id])
    @form2.destroy

    respond_to do |format|
      format.html { redirect_to form2s_url }
      format.json { head :no_content }
    end
  end
end
