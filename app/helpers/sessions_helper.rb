module SessionsHelper

  def sign_in(user)
		session[:user_id] = user.id
		self.current_user = user
  end

  def sign_out
		session[:user_id] = nil
    self.current_user = nil
  end
 
	def signed_in?
    !current_user.nil?
  end
   
  def current_user=(user)
    @current_user = user
  end

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end

  def new_user
    redirect_to(root_path) unless !signed_in?
  end

  def deny_access
    store_location
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    clear_return_to
  end

  def authenticate
    deny_access unless signed_in?
  end 

  private
  
    def store_location
      session[:return_to] = request.fullpath
    end

    def clear_return_to
      session[:return_to] = nil
    end
  
    def error_message(object_a)
      err=object_a.inject(0) { |result, element| result + element.errors.count }
   		if err>0
   			s="Error"
   			if err>1
   				s=s.pluralize
   				end
   			s="#{err} #{s} occured: "
   			object_a.each do |obj|
   				obj.errors.full_messages.each do |msg| 
      			s="#{s} #{msg},"
      		end
      	end
      	return "#{s[0..-2]}."
			end
		end
		
end
