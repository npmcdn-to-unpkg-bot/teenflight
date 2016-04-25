class IndicesController < InheritedResources::Base

  private

    def index_params
      params.require(:index).permit(:eventname)
    end
end

