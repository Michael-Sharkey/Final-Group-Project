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
end
