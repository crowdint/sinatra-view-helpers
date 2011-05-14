This gem make your ruby classes Rails 3 compatibles, so you can use View helpers.

## Installing
Include the gem in your Gemfile

    gem 'views-helper'

Install it

    bundle install

## Use
Only include the module in your class 

    class Foo
      include ViewsHelpers::Model
      attr_accessor :name
    
      validates :name, :presence => true
    end

## TODO
Create a gem version for sinatra an use Padrino helpers
