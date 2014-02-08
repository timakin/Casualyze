require 'spec_helper'

describe "boards/index" do
  before(:each) do
    assign(:boards, [
      stub_model(Board,
        :board_name => "Board Name"
      ),
      stub_model(Board,
        :board_name => "Board Name"
      )
    ])
  end

  it "renders a list of boards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Board Name".to_s, :count => 2
  end
end
