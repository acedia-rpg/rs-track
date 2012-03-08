require 'spec_helper'

describe "songs/new" do
  before(:each) do
    assign(:song, stub_model(Song,
      :name => "MyString",
      :string, => "MyString",
      :artist => "MyString",
      :string, => "MyString",
      :album => "MyString",
      :string, => "MyString",
      :year => 1
    ).as_new_record)
  end

  it "renders new song form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => songs_path, :method => "post" do
      assert_select "input#song_name", :name => "song[name]"
      assert_select "input#song_string,", :name => "song[string,]"
      assert_select "input#song_artist", :name => "song[artist]"
      assert_select "input#song_string,", :name => "song[string,]"
      assert_select "input#song_album", :name => "song[album]"
      assert_select "input#song_string,", :name => "song[string,]"
      assert_select "input#song_year", :name => "song[year]"
    end
  end
end
