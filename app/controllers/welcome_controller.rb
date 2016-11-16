class WelcomeController < ApplicationController


  def home
  end
def about
  end
  def manual
  end

  def design_documentation
  end
  def post_mortem
  end
  def requirements
  end
  def docs_main
  end





  def report
    @search = Report.new(params[:search])
    @worker = @search.scope
 @workerTA = @search.scope1

  end

  def dockreport
   @search = Dockreport.new(params[:search])
   @dockw = @search.scope
    @count = @search.scope2



  end

end