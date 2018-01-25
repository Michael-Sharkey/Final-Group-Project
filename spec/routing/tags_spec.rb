require 'rails_helper'
#RESTFUL routes
RSpec.describe 'routing to tags' do
  it 'routes /tags to tags#index' do
    expect(get: "/tags").to route_to(
      controller: "tags",
      action: "index"
    )
  end
  it 'routes /tags/1 to tags#show' do
    expect(get: "/tags/1").to route_to(
      controller: "tags",
      action: "show",
      id: '1'
    )
  end
  it 'routes /tags/new to tags#new' do
    expect(get: "/tags/new").to route_to(
      controller: "tags",
      action: "new"
    )
  end
  it 'routes /tags to tags#create' do
    expect(post: "/tags").to route_to(
      controller: "tags",
      action: "create"
    )
  end
  it "routes /tags/1 to tags#update" do
    expect(put: "/tags/1").to route_to(
      controller: "tags",
      action: "update",
      id: "1"
    )
  end
  it "routes /tags/1 to tags#destroy" do
    expect(delete: "/tags/1").to route_to(
      controller: "tags",
      action: "destroy",
      id: "1"
    )
  end
  
end
