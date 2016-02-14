class SiteController < ApplicationController
  def status
    @db_correct       = (User.pluck(:name) == ['Josh'])
    @env_vars_correct = (ENV['FAVORITE_NUMBER'] == "twelve")
  end
end
