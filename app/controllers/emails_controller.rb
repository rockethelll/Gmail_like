class EmailsController < ApplicationController
  def index
    # @emails = Email.all
    @emails = Email.order(id: :desc)
    @email = Email.new
  end

  def create
    @email = Email.create!(object: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, read: false)
    respond_to do |format|
      if @email.save
        format.html { redirect_to emails_path, notice: 'Email was successfully created' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    redirect_to emails_path
  end

  def toggle
    @email = Email.find(params[:id])
    @email.update(read: params[:read])
    render json: { message: 'Success' }
  end
end
