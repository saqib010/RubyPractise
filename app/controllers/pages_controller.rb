class PagesController < ApplicationController
  def home
    @myblogsData = Blog.all
    @myskillsData = Skill.all
    @myportfolioitems = Portfolio.all
  end

  def about
  end

  def contact
  end
end
