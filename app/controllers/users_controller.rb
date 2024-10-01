class UsersController < ApplicationController

  def homepage
    redirect_to("/users")
  end

  def all_users
    render({:template=> "/photogram_templates/users_index"})
  end

  def user
    render({:template=> "/photogram_templates/users_show"})
  end

  def add_user
    redirect_to("/photogram_templates/users_show")
  end

  def update_user

  end
  
end
