module UsersHelper
    
    def edit_user_link(user)
        link_to("Edit This User", edit_user_path(user) )
    end    

    def show_user_link(user, title)
        link_to(title, user_path(user) )
    end
end