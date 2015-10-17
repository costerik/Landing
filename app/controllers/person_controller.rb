class PersonController < ApplicationController
  def new
  	@person=Person.new
  end

  def create
  	@person = Person.new(person_params)

    #respond_to do |format|
      if @person.save
        #format.html { redirect_to 'new', notice: 'Person was successfully created.' }
        redirect_to person_new_path, notice: 'Sus datos han sido guardados.'
      #  format.json { render action: 'show', status: :created, location: @person }
      else
        #format.html { render :new }
        render :new
       # format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    #end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:name, :last_name, :email)
    end
end
