class WhispersController < ApplicationController
  def new
  end
  
  def create
    @secret = Whisper.create secret_content: params[:secret_content]
    redirect_to "/whispers/#{@secret.id}/link"
  end
  
  def show
    @secret = Whisper.find(params[:id])
    
    if @secret.secret_read
      @secret.update(secret_content: "Non non non, tu as déjà lu")
    else
      @secret.update(secret_read: true)
    end
  end
  
  def link
    @secret = Whisper.find(params[:id])
  end
end
