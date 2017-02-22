require 'rails_helper'

RSpec.describe "todos/index", type: :view do
  before(:each) do
    assign(:todos, [
      Todo.create!(
        :title => "Title",
        :status => "canceled"
      ),
      Todo.create!(
        :title => "Title",
        :status => "canceled"
      )
    ])
  end

  it "renders a list of todos" do
    render
    assert_select "tr>td", :text => "Title", :count => 2
    assert_select "tr>td", :text => "canceled", :count => 2
  end
end
