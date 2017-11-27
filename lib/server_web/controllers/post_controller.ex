defmodule SansTitreWeb.PostController do
  use SansTitreWeb, :controller

  def index(conn, _params) do
    posts = SansTitre.Repo.all(SansTitre.Post)
    render conn, :index, posts: posts
  end

  def show(conn, %{"slug" => slug}) do
    post = SansTitre.Repo.get_by!(SansTitre.Post, slug: slug)
    render conn, :show, post: post
  end
end
