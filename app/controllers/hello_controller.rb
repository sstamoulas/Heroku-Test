class HelloController < ApplicationController
  
  #you can modify the layout file used by adding this line
  #layout "application"

  #can also take nil value for no layout
  #layout nil

  #or use a method reference to determine the layout used
  #layout :admin_or_user

  #you can also turn off html and have xml, rss, or text returned
  #layout "application", except: :ss

  #or

  #layout "aplication", except: [:rss, :xml, :text_only]

  #or to use only html
  #layout "application", only: :html

  #look into render function for controllers including multiple actions that need their own layouts

  
  def index
  	@page_title="Hello!"
  	@count=3
  	@bonus="This message came from the controller."
  end

  #is the method reference for the layout above
  # private

  # def admin_or_user
  # 	if admin_authenticated
  # 		"admin_screen"
  # 	else
  # 		"user_screen"
  # 	end
  # end
end
