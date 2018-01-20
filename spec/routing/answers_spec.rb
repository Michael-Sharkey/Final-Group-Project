require 'rails_helper'

RSpec.describe 'routing to question/answers' do
  #TODO - need to remove route to ansers index - since that is not necessary
  it 'routes questions/1/answers/1 to answers#edit' do
    expect(get: "questions/1/answers/1/edit").to route_to(
      controller: "answers",
      action: "edit",
      question_id: '1',
      id: '1'
    )
  end
  it 'routes questions/1/answers/1 to answers#show' do
    expect(get: "questions/1/answers/1").to route_to(
      controller: "answers",
      action: "show",
      question_id: '1',
      id: '1'
    )
  end
  it 'routes questions/1/answers/new to answers#new' do
    expect(get: "questions/1/answers/new").to route_to(
      controller: "answers",
      action: "new",
      question_id: '1'
    )
  end
  it 'routes questions/1/answers to answers#create' do
    expect(post: "questions/1/answers").to route_to(
      controller: "answers",
      action: "create",
      question_id: '1'
    )
  end
  it "routes questions/1/answers/1 to answers#update" do
    expect(put: "questions/1/answers/1").to route_to(
      controller: "answers",
      action: "update",
      id: "1",
      question_id: '1'
    )
  end
  it "routes questions/1/answers/1 to answers#destroy" do
    expect(delete: "questions/1/answers/1").to route_to(
      controller: "answers",
      action: "destroy",
      id: "1",
      question_id: '1'
    )
  end
end
