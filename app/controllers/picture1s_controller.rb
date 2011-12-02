class Picture1sController < ApplicationController
  # GET /picture1s
  # GET /picture1s.xml
  def index
    @picture1s = Picture1.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @picture1s }
    end
  end

  # GET /picture1s/1
  # GET /picture1s/1.xml
  def show
    @picture1 = Picture1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @picture1 }
    end
  end

  # GET /picture1s/new
  # GET /picture1s/new.xml
  def new
    @picture1 = Picture1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @picture1 }
    end
  end

  # GET /picture1s/1/edit
  def edit
    @picture1 = Picture1.find(params[:id])
  end

  # POST /picture1s
  # POST /picture1s.xml
  def create
    @picture1 = Picture1.new(params[:picture1])

    respond_to do |format|
      if @picture1.save
        format.html { redirect_to(@picture1, :notice => 'Picture1 was successfully created.') }
        format.xml  { render :xml => @picture1, :status => :created, :location => @picture1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @picture1.errors, :status => :unprocessable_entity }
      end
    end
  end


  #---------------------------------
  def picture
    @picture1 = Picture1.find(params[:id])
    send_data(@picture1.data,
              :filename => @picture1.name,
              :type => @picture1.content_type,
              :disposition => "inline")
  end


  # PUT /picture1s/1
  # PUT /picture1s/1.xml
  def update
    @picture1 = Picture1.find(params[:id])

    respond_to do |format|
      if @picture1.update_attributes(params[:picture1])
       # format.html { redirect_to(@picture1, :notice => 'Picture1 was successfully updated.') }
        format.html { redirect_to(picture1s_path, :notice => 'Picture1 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @picture1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /picture1s/1
  # DELETE /picture1s/1.xml
  def destroy
    @picture1 = Picture1.find(params[:id])
    @picture1.destroy

    respond_to do |format|
      format.html { redirect_to(picture1s_url) }
      format.xml  { head :ok }
    end
  end
end
