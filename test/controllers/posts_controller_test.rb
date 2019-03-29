require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { photo: @post.photo, subtitle: @post.subtitle, text1: @post.text1, text10: @post.text10, text2: @post.text2, text3: @post.text3, text4: @post.text4, text5: @post.text5, text6: @post.text6, text7: @post.text7, text8: @post.text8, text9: @post.text9, title: @post.title } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { photo: @post.photo, subtitle: @post.subtitle, text1: @post.text1, text10: @post.text10, text2: @post.text2, text3: @post.text3, text4: @post.text4, text5: @post.text5, text6: @post.text6, text7: @post.text7, text8: @post.text8, text9: @post.text9, title: @post.title } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
