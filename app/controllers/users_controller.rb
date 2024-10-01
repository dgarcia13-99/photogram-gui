class UsersController < ApplicationController

  def homepage
    redirect_to("/users")
  end

  def all_users
    render({:template=> "/photogram_templates/users_index"})
  end

  def user
    @username=params.fetch("path_id")
    @this_user=User.where({:username => @username}).at(0)
    render({:template=> "/photogram_templates/users_show"})
  end

  def update_user
    @username=params.fetch("path_id")
    @this_user=User.where({:username=>@username}).at(0)
    @this_user.username=params.fetch("update_user")
    @this_user.save
    redirect_to("/photogram_templates/users_show")
  end

  def add_user
    @username=params.fetch("add_user")
    @this_user=User.new
    @this_user.username=@username
    @this_user.save
    redirect_to("/photogram_templates/users_show")
  end
  
end
