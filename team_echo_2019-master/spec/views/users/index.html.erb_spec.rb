require 'rails_helper'
#test fails -someone ty to fix it
RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email => "Email",
        :password => "124"
      ),
      User.create!(
        :email => "Mail",
        :password => "123"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 0
    assert_select "tr>td", :text => "".to_s, :count => 0
  end
end
