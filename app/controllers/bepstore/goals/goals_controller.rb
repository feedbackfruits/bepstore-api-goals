module BEPStore
  module Goals
    class GoalsController < V1::ActivitiesController
      def update_params
        params = super
        res = params["resources"].map do |hash|
          Resource.new hash
        end

        params.merge( resources: res )
      end
    end
  end
end
