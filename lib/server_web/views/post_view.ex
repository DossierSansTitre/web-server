defmodule SansTitreWeb.PostView do
  use SansTitreWeb, :view

  def render("index.json", %{posts: posts}) do
    %{
      posts: Enum.map(posts, &post_json/1)
    }
  end

  def render("show.json", %{post: post}) do
    post_json(post)
  end

  def post_json(post) do
    %{
      title: post.title,
      slug: post.slug,
      body: post.body
    }
  end
end
