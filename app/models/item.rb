class Item < ApplicationRecord
  include IdentityCache

  belongs_to :basket
end
