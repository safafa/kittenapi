class Api::V1::KittensController < ApiController
  def index

    @kittens = Kitten.all
   
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    
    if @kitten.save
      redirect_to :index
    end
    
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])
    
    if @kitten.update(kitten_params)
      redirect_to api_v1_kitten_path(params[:id])
    else
      render.json "error"
    end
     
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
  end

  private
  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
