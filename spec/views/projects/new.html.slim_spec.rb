require 'rails_helper'

RSpec.describe "projects/new", :type => :view do
  before(:each) do
    assign(:project, Project.new(
      :organization => nil,
      :name => "MyString",
      :slug => "MyString"
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_organization_id[name=?]", "project[organization_id]"

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_slug[name=?]", "project[slug]"
    end
  end
end
