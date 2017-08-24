class Admin::VisitorsController < Admin::ApplicationController
  def index
    @visitors = Visitor.all.order(id: :desc).page params[:page]
  end

  def destroy
    @visitor = Visitor.find(params[:id])
    @visitor.destroy

<<<<<<< HEAD
    redirect_back(fallback_location: (request.referer || root_path), notice: 'Successfully delete')
=======
    redirect_to admin_visitors_path, notice: 'Successfully delete'
>>>>>>> 2669f3179228394ca7f6d327d06f62ebb82ae199
  end
end
