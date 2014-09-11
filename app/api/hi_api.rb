require 'grape'

class HiAPI < Grape::API
  get 'hello' do
    {:hello => 'world'}
  end
end