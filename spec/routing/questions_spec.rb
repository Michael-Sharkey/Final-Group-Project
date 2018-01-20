require 'rails_helper'

RSpec.describe 'routing to questions' do
  it 'routes /questions to questions#index' do
    expect(get: "/questions").to route_to(
      controller: "questions",
      action: "index"
    )
  end
  it 'routes /questions/1 to questions#show' do
    expect(get: "/questions/1").to route_to(
      controller: "questions",
      action: "show",
      id: '1'
    )
  end
  it 'routes /questions/new to questions#new' do
    expect(get: "/questions/new").to route_to(
      controller: "questions",
      action: "new"
    )
  end
  it 'routes /questions to questions#create' do
    expect(post: "/questions").to route_to(
      controller: "questions",
      action: "create"
    )
  end
  it "routes /questions/1 to questions#update" do
    expect(put: "/questions/1").to route_to(
      controller: "questions",
      action: "update",
      id: "1"
    )
  end
  it "routes /questions/1 to questions#destroy" do
    expect(delete: "/questions/1").to route_to(
      controller: "questions",
      action: "destroy",
      id: "1"
    )
  end
end
