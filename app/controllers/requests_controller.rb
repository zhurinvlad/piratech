class RequestsController < InheritedResources::Base
  before_filter :authenticate_user!
  def import
    Request.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end

  private

    def request_params
      params.require(:request).permit(:url, :check, :send_number)
    end
end

