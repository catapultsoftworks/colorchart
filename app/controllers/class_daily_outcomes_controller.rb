class ClassDailyOutcomesController < ApplicationController

   def show
      @classgroup = Classgroup.find(params[:id]);
      @behaviors = BehaviorRank.order(:rank).all
   end

end
