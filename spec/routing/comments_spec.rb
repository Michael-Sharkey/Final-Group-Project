require 'rails_helper'
# RESTFUL routes
RSpec.describe 'routing to blogs/comments' do
  it 'routes blogs/1/comments to comments#index' do
    expect(get: "blogs/1/comments").to route_to(
      controller: "comments",
      action: "index",
      blog_id: '1'
    )
  end
  it 'routes blogs/1/comments/1 to comments#edit' do
    expect(get: "blogs/1/comments/1/edit").to route_to(
      controller: "comments",
      action: "edit",
      blog_id: '1',
      id: '1'
    )
  end
  it 'routes blogs/1/comments/1 to comments#show' do
    expect(get: "blogs/1/comments/1").to route_to(
      controller: "comments",
      action: "show",
      blog_id: '1',
      id: '1'
    )
  end
  it 'routes blogs/1/comments/new to comments#new' do
    expect(get: "blogs/1/comments/new").to route_to(
      controller: "comments",
      action: "new",
      blog_id: '1'
    )
  end
  it 'routes blogs/1/comments to comments#create' do
    expect(post: "blogs/1/comments").to route_to(
      controller: "comments",
      action: "create",
      blog_id: '1'
    )
  end
  it "routes blogs/1/comments/1 to comments#update" do
    expect(put: "blogs/1/comments/1").to route_to(
      controller: "comments",
      action: "update",
      id: "1",
      blog_id: '1'
    )
  end
  it "routes blogs/1/comments/1 to comments#destroy" do
    expect(delete: "blogs/1/comments/1").to route_to(
      controller: "comments",
      action: "destroy",
      id: "1",
      blog_id: '1'
    )
  end
end
