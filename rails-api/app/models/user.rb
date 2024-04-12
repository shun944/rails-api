class User < ApplicationRecord
  belongs_to :shop, primary_key: 'email', foreign_key: 'email'
end
