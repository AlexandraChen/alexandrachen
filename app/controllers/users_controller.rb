class UsersController < ApplicationController
  before_action :authenticate_user!

  def admin_panel
  end
    

end
