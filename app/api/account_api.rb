require 'grape'

# Account APIs:
#  - POST create
#  - GET list
#  - PUT update
#  - DELETE delete

class AccountAPI < Grape::API
  post 'create' do
    #TODO 412 if required params are missing
    u = User.new(:name => params[:name],
                 :email => params[:email])
    u.save
    {:user => u.to_json}
  end
  
  get 'list' do
    User.all.collect{|u| u.name}
  end

  put 'update' do
    #TODO
  end

  delete 'delete' do
    #TODO
  end
end