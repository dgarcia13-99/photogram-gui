Rails.application.routes.draw do

#USERS
get("/", {:controller=>"users", :action=>"homepage"})
get("/users", {:controller=>"users", :action=>"all_users"})
get("/users/:path_id", {:controller=>"users", :action=>"user"})
post("/add_user", {:controller=>"users", :action=>"add_user"})
post("/update_user", {:controller=>"users", :action=>"update_user"})

#PHOTOS
get("/photos", {:controller=>"photos", :action=>"all_photos"})
get("/photos/:path_id", {:controller=>"photos", :action=>"photo"})
post("/add_photo", {:controller=>"photos", :action=>"add_photo"})
post("/update_photo", {:controller=>"photos", :action=>"update_photo"})
get("/delete_photo", {:controller=>"photos", :action=>"delete_photo"})

#COMMENTS
get("/add_comment", {:controller=>"comments", :action=>"add_comment"})

end
