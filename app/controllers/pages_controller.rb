class PagesController < ApplicationController
  def about
    @works = Work.all
  end

  def gallery
    @works = Work.all
  end

  def price
    @prices = Price.all
  end

  def contacts
  end
end
