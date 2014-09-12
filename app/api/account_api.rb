require 'grape'

class AccountAPI < Grape::API
  get 'count' do
    {:count => User.count}
  end

  get 'create' do
    u = User.new
    u.name = 'David'
    u.email = 'drsomach@gmail.com'
    u.save
    {:user => u.to_json}
  end
end