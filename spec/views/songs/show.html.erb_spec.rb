require 'spec_helper'

describe "songs/show" do
  before(:each) do
    @song = assign(:song, stub_model(Song,
      :name => "Name",
      :string, => "String,",
      :artist => "Artist",
      :string, => "String,",
      :album => "Album",
      :string, => "String,",
      :year => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/String,/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Artist/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/String,/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Album/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/String,/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
