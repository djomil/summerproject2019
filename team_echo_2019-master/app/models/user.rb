class User < ApplicationRecord
  has_secure_password
    
  validates :email, presence: true, uniqueness: true
    
    # Based on https://iridakos.com/how-to/2014/10/14/rails-radio-buttons-required-boolean.html
    # And on https://stackoverflow.com/questions/3608076/rails-how-do-i-validate-that-something-is-a-boolean
    validates :admin, inclusion: { in: [true, false] }
    
end
