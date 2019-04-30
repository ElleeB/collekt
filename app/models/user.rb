class User < ApplicationRecord
  include ActiveModel::Validations
  has_secure_password

  has_many :collections
  has_many :items, through: :collections
  has_many :categories, through: :collections
  has_many :images, through: :items
end

# has_secure_password

# user = User.new(name: 'david', password: '', password_confirmation: 'nomatch')
# user.save # => false, password required
# user.password = 'mUc3m00RsqyRe'
# user.save # => false, confirmation doesn't match
# user.password_confirmation = 'mUc3m00RsqyRe'
# user.save # => true
# user.authenticate('notright') # => false
# user.authenticate('mUc3m00RsqyRe') # => user
# User.find_by(name: 'david').try(:authenticate, 'notright') # => false
# User.find_by(name: 'david').try(:authenticate, 'mUc3m00RsqyRe') # => user

# validations

# person = Person.new
# person.valid?                   # => true
# person.invalid?                 # => false
#
# person.first_name = 'zoolander'
# person.valid?                   # => false
# person.invalid?                 # => true
# person.errors.messages          # => {first_name:["starts with z."]}
