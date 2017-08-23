class Admin::VisitorsController < Admin::ApplicationController
  def index
    @visitors = Visitor.all.order(id: :desc).page params[:page]
  end

  def destroy
    @visitor = Visitor.find(params[:id])
    @visitor.destroy

    redirect_back(fallback_location: (request.referer || root_path), notice: 'Successfully delete')
  end
end
