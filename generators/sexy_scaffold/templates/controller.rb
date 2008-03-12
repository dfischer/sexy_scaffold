class <%= controller_class_name %>Controller < ApplicationController
  make_resourceful do
    actions :all
    <% if !controller_class_name.split("::")[1].nil? %>
    belongs_to :<%= singular_name %>
    <% end %>
    response_for :show do |format|
      format.html
      format.xml { render :xml => @<%= singular_name %> }
    end
    response_for :index do |format|
      format.html
      format.xml { render :xml => @<%= singular_name.pluralize %> }
    end
  end
end
