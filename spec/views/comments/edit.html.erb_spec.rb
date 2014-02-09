require 'spec_helper'

describe "comments/edit" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :name => "MyString",
      :body => "MyText",
      :topic_id => 1
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do
      assert_select "input#comment_name[name=?]", "comment[name]"
      assert_select "textarea#comment_body[name=?]", "comment[body]"
      assert_select "input#comment_topic_id[name=?]", "comment[topic_id]"
    end
  end
end
