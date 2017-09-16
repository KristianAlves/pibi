class Backoffice::EmailController < BackofficeController
  before_action :set_email, only: [:edit, :update, :destroy]

  def index
    @emails_cart = EmailCarts.all
  end

  def new
    @email = EmailCart.new
  end

  def create
    @email = EmailCart.new(params_email)
    if @email.save
      redirect_to backoffice_email_index_path, notice: "Email successfully registered!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @email.update(params_email)
      redirect_to backoffice_email_index_path, notice: "Brand successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    if @email.destroy
      redirect_to backoffice_email_index_path, notice: "Brand successfully delete!"
    else
      render :index
    end
  end


private
  def set_email
    @email = EmailToSendCart.find(params[:id])
  end

  def params_email
    params.require(:email).permit(:email_pibi, :email_loja)
  end

end
