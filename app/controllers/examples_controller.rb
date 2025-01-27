class ExamplesController < ApplicationController
    def index
      @examples = Example.all
    end
  
    def show
      @example = Example.find(params[:id])
    end
  
    def new
      @example = Example.new
    end
  
    def create
      @example = Example.new(example_params)
      if @example.save
        redirect_to @example, notice: 'Example was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def example_params
      params.require(:example).permit(:name)
    end
  end
  