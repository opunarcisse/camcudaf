module SessionsHelper

 def logged_in?
    !session[:user_id].nil?
    return session[:user_id]
  end

  def member_logged_in?
    if logged_in?
   user = User.find(logged_in?)
   return user
    end
  end

 def names_logged_in?
    if logged_in?
   user = User.find(logged_in?)
   return user.first_name + " "+ user.last_name
   else
   return "You are not a member"
   end
 end  

  def member_edit_comment(userid)
  if userid.to_i == logged_in?.to_i
  return 1
  end
  end
end
