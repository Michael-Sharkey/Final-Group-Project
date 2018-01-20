require 'rails_helper'

RSpec.describe 'routing to blogs' do
  it 'routes /blogs to blogs#index' do
    expect(get: "/blogs").to route_to(
      controller: "blogs",
      action: "index"
    )
  end
  it 'routes /blogs/1 to blogs#show' do
    expect(get: "/blogs/1").to route_to(
      controller: "blogs",
      action: "show",
      id: '1'
    )
  end
  it 'routes /blogs/new to blogs#new' do
    expect(get: "/blogs/new").to route_to(
      controller: "blogs",
      action: "new"
    )
  end
  it 'routes /blogs to blogs#create' do
    expect(post: "/blogs").to route_to(
      controller: "blogs",
      action: "create"
    )
  end
  it "routes /blogs/1 to blogs#update" do
    expect(put: "/blogs/1").to route_to(
      controller: "blogs",
      action: "update",
      id: "1"
    )
  end
  it "routes /blogs/1 to blogs#destroy" do
    expect(delete: "/blogs/1").to route_to(
      controller: "blogs",
      action: "destroy",
      id: "1"
    )
  end
end
