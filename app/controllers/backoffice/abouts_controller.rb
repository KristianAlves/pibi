class Backoffice::AboutsController < BackofficeController
  before_action :set_about, only: [:edit, :update, :destroy]



  def index
    @abouts = About.all
  end

  def new
    @about = About.new
  end

  def create
    @about = About.new(params_about)
    if @about.save
      redirect_to backoffice_abouts_path, notice: "About #{@about.title} successfully registered!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @about.update(params_about)
      redirect_to backoffice_abouts_path, notice: "About #{@about.title} successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    if @about.destroy
      redirect_to backoffice_abouts_path, notice: "About #{@about.title} successfully delete!"
    else
      render :index
    end
  end


private
  def set_about
    @about = About.find(params[:id])
  end

  def params_about
    params.require(:about).permit(:title, :description)
  end

end
