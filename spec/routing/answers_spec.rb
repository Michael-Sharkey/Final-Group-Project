require 'rails_helper'

RSpec.describe 'routing to answers' do
  it 'routes /answers to answers#index' do
    expect(get: "/answers").to route_to(
      controller: "answers",
      action: "index"
    )
  end
  it 'routes /answers/1 to answers#show' do
    expect(get: "/answers/1").to route_to(
      controller: "answers",
      action: "show",
      id: '1'
    )
  end
  it 'routes /answers/new to answers#new' do
    expect(get: "/answers/new").to route_to(
      controller: "answers",
      action: "new"
    )
  end
  it 'routes /answers to answers#create' do
    expect(post: "/answers").to route_to(
      controller: "answers",
      action: "create"
    )
  end
  it "routes /answers/1 to answers#update" do
    expect(put: "/answers/1").to route_to(
      controller: "answers",
      action: "update",
      id: "1"
    )
  end
  it "routes /answers/1 to answers#destroy" do
    expect(delete: "/answers/1").to route_to(
      controller: "answers",
      action: "destroy",
      id: "1"
    )
  end
end
