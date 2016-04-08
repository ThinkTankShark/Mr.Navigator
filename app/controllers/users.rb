# Check to make sure user logged in for any post method
before "/users*" do
  unless request.get?
    unless current_user
      redirect '/'
    end
  end
end

#Return a page for registration
get '/users/new' do
  erb :'users/signup'
end

#Create a new user
post '/users' do
  @user = User.new(first_name: params[:first_name],
                  last_name: params[:last_name],
                  email: params[:email],
                  password: params[:password],
                  location: params[:user_location])

  if request.xhr?
    if @user.save
      p @user
      session[:user_id] = @user.id
      redirect '/'
    else
      @errors = @user.errors.messages
      erb :'users/signup'
    end
  else
    redirect '/'
  end
end

#Return a page to login
get '/login' do
  erb :'users/login'
end

#Return homepage after successful login
post '/login' do
  @user = User.find_by(email: params[:email])

  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :'users/login'
  end
end

#Logs out user
get '/logout' do
  session.delete(:user_id)
  redirect '/'
end

#Return another user location
get '/users/find' do
  if request.xhr?
    @user = User.find_by(email: params[:to])
    puts ""
    puts "------------------------------"
    puts @user.location
    puts "------------------------------"
    puts ""
    return @user.location.to_json
  else
    p "error"
  end
end
