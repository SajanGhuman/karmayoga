class Admin::CategoriesController < AdminController
    before_action :set_admin_category , only: %i[ show edit update destroy ]
  
    def index 
      @admin_categories = Category.all
    end
  
    def show
      # Implement logic to find and display a specific category
    end
  
    def new
      @admin_category = Category.new
    end
  
    def create
      @admin_category = Category.new(admin_category_params)
      if @admin_category.save
        redirect_to admin_category_path(@admin_category), notice: 'Category was successfully created.'
      else
        render :new
      end
    end
    
    def edit
      # Implement logic to find and display a form to edit a specific category
    end
  
    def update
      if @admin_category.update(admin_category_params)
        redirect_to admin_category_path(@admin_category), notice: 'Category was successfully updated.'
      else
        flash.now[:alert] = 'Failed to update category.'
        render :edit
      end
    end
    
  
    def destroy
      @admin_category.destroy
      redirect_to admin_categories_path, notice: 'Category was successfully deleted.'
    end
    
  
    private
  
    def set_admin_category
      @admin_category = Category.find(params[:id])
    end

    def admin_category_params
      params.require(:category).permit(:name, :description)
    end
    
  end
  