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

You can use your ruby classes as ActiveRecord model in the views


    #
    <%= form_for @foo do |form|%>
      <%= form.label :name, 'Name' %>
      <%= form.text_field :name %>
      <%= form.submit 'Send' %>
    <% end %>

## TODO
Create a gem version for sinatra an use Padrino helpers
