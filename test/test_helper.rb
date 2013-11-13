ENV["RAILS_ENV"] ||= "test"
 require 'simplecov'
 SimpleCov.start 'rails'
 puts "required simplecov"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails' 
require './test/helpers/minitest_helper'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!


  # fixtures :all

  def create_valid_item
    @item = Item.create(:title => "Hello!", 
    :description => "World", 
    :price => 4 )
  end

  def create_valid_order
    @order = Order.create(:status => 'unpaid', :user_id => 5)
  end

  def create_valid_category
    @category = Category.create(:title => 'Brunch')
  end

  def create_valid_user
    @user = User.create(:email        => "test@example.com",
                        :full_name    => "Bennny Smith",
                        :display_name => "Bennybeans")
  end 

  # Add more helper methods to be used by all tests here...
end
