class User < ApplicationRecord
  include IdentityCache

  has_many :baskets
end
