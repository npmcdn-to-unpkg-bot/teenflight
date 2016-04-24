class WelcomesController < InheritedResources::Base

  private

    def welcome_params
      params.require(:welcome).permit(:name, :message)
    end
end

