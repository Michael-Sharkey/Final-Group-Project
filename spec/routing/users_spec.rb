require 'rails_helper'

RSpec.describe 'routing to users' do
  it 'routes /users to users#index' do
    expect(get: "/users").to route_to(
      controller: "users",
      action: "index"
    )
  end
  it 'routes /users/1 to users#show' do
    expect(get: "/users/1").to route_to(
      controller: "users",
      action: "show",
      id: '1'
    )
  end
  it 'routes /users/new to users#new' do
    expect(get: "/users/new").to route_to(
      controller: "users",
      action: "new"
    )
  end
  it 'routes /users to users#create' do
    expect(post: "/users").to route_to(
      controller: "devise/registrations", # user creation handled by devise
      action: "create"
    )
  end
  it "routes /users/1 to users#update" do
    expect(put: "/users/1").to route_to(
      controller: "users",
      action: "update",
      id: "1"
    )
  end
  it "routes /users/1 to users#destroy" do
    expect(delete: "/users/1").to route_to(
      controller: "users",
      action: "destroy",
      id: "1"
    )
  end
end
