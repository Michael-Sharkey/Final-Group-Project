require 'rails_helper'

RSpec.describe 'routing to welcome' do
  # RESTFUL routes
  it 'routes /welcome to welcome#index' do
    expect(get: "/welcome/index").to route_to(
      controller: "welcome",
      action: "index"
    )
  end
  #Root test
  it 'routes welcome#index at the root' do
    expect(get: "/").to route_to(
      controller: "welcome",
      action: "index"
    )
  end
end
