
class TotalCost
  def initialize(user)
    @user = user
  end

  def call
    total = 0
    @user.baskets.each do |basket|
      basket.items.each do |item|
        total += item.price
      end
    end
    total
  end
end