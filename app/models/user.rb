class User < ApplicationRecord
  include IdentityCache

  has_many :baskets

  def whatever
    User.where(name: 'andrew').to_a
    User.all.includes(:baskets)
  end
end
