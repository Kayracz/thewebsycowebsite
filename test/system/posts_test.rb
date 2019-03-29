require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Photo", with: @post.photo
    fill_in "Subtitle", with: @post.subtitle
    fill_in "Text1", with: @post.text1
    fill_in "Text10", with: @post.text10
    fill_in "Text2", with: @post.text2
    fill_in "Text3", with: @post.text3
    fill_in "Text4", with: @post.text4
    fill_in "Text5", with: @post.text5
    fill_in "Text6", with: @post.text6
    fill_in "Text7", with: @post.text7
    fill_in "Text8", with: @post.text8
    fill_in "Text9", with: @post.text9
    fill_in "Title", with: @post.title
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Photo", with: @post.photo
    fill_in "Subtitle", with: @post.subtitle
    fill_in "Text1", with: @post.text1
    fill_in "Text10", with: @post.text10
    fill_in "Text2", with: @post.text2
    fill_in "Text3", with: @post.text3
    fill_in "Text4", with: @post.text4
    fill_in "Text5", with: @post.text5
    fill_in "Text6", with: @post.text6
    fill_in "Text7", with: @post.text7
    fill_in "Text8", with: @post.text8
    fill_in "Text9", with: @post.text9
    fill_in "Title", with: @post.title
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
