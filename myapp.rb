require "roda"


class Myapp < Roda

  #plugin :static, ["/images", "/css", "/js"]
  plugin :render
  #plugin :head	
  route do |r|
    #r.root do
     # "Hello!"
    #end
  



  r.root do
    view("homepage")
  end

  r.get "about" do
  	@about_me = "Hi This Page is all about Anurag Saxena."
    view("about")
  end

  r.get "contact" do
    view("contact")
  end

end
end
