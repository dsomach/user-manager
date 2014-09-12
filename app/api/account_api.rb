require 'grape'

class AccountAPI < Grape::API
  get 'count' do
    {:count => User.count}
  end
  
  get 'list' do
    User.all.collect{|u| u.name}
  end

  #TODO create will be a POST
  get 'create' do
    u = User.new
    u.name = params[:name] || 'David'
    u.email = params[:email] || 'drsomach@gmail.com'
    u.save
    {:user => u.to_json}
  end
end