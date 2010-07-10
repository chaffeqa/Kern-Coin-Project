class Account::ProfileController < ApplicationController
  before_filter :require_user, :get_user

  def get_user
    @user = current_user
  end

  def show
  end

  def bids
    @bids = @user.bids
  end

  def history
    @won_auctions = @user.auctions.order("end_time desc")
    @auctions_bid_on = @user.bids.include(:auction)
  end

  def bought_items
  end

  def won_auctions
  end

end
