class EmailsController < ApplicationController
  
  def index
    @emails = Email.all.order("created_at DESC")
    @last_email = Email.last
  end

  def create
    @email = Email.create(email_params)
    
    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  def show
    @email = Email.find(params[:id])

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end

  end

   def edit
    @email = Email.find(params[:id])
  end

  def update
   @email = Email.find(params[:id])

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
 end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
    format.html { redirect_to emails_path }
    format.js { }
    end

  end

  private

  def email_params
    params.permit(:title, :author, :content)
  end

end


