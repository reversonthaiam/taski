class PagesController < ApplicationController
  def contact
  end

  def about
    @title = "my cool page"
  end

  def home
    @projects = Project.all
  end
end